import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';

import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:intl/intl.dart';

extension DateFormats on DateTime {
  String get dateFormat {
    /*  final day = this.day.toString().padLeft(2, '0');
    final month = this.month.toString().padLeft(2, '0');
    final year = this.year.toString().padLeft(2, '0');
    return '$day/$month/$year'; */

    return DateFormat('dd/MM/yyyy').format(this);
  }

  String get timeFormat {
    return DateFormat('hh:mm a').format(this).toLowerCase();
  }
}

class MakeOrderUseCase {
  static Future<void> execute(
    ShoppingCartDto cart,
    EstablishmentDto establishment, {
    required String contactName,
    required String contactPhone,
    required Option<String> address,
    required String additionalDetail,
  }) async {
    final uri = Uri.parse(html.window.location.href);
    final baseUrl = '${uri.scheme}://${uri.host}';
    final currentDate = DateTime.now();
    final horaDePedido = currentDate.timeFormat;
    final fechaDePedido = currentDate.dateFormat;

    final serviceText = address.fold(
      () => 'Recojo',
      (_) => 'Domicilio',
    );
    final deliveryCost = address.fold(
      () => '',
      (_) => '\nCosto de entrega: ${establishment.deliveryCost}\n',
    );
    final contactDirection = address.fold(
      () => '',
      (address) =>
          '\nDirección: $address${additionalDetail.isEmpty ? '' : '\n$additionalDetail'}\n',
    );

    final itemsDetail = cart.items.map((item) {
      final comment = item.comment.trim().isEmpty
          ? ''
          : '\n    Comentario: ${item.comment}';

      final extrasFood = item.extrasFood.isEmpty
          ? ''
          : '\n${item.extrasFood.map((topic) => '    · ${topic.amount} ${topic.extraFood.name} S/. ${topic.extraFood.price}').join('\n')}';
      final optionsFoodOneSelection = item.optionsFoodOneSelection.isEmpty
          ? ''
          : '\n${item.optionsFoodOneSelection.map((topic) => '    · 1 ${topic.optionFood.name} S/. ${topic.optionFood.price}').join('\n')}';
      final optionsFoodForMultiple = item.optionsFoodForMultiple.isEmpty
          ? ''
          : '\n${item.optionsFoodForMultiple.map((topic) => '    · 1 ${topic.optionFood.name} S/. ${topic.optionFood.price}').join('\n')}';
      return '''
    ${item.amount} ${item.product.name} S/. ${item.totalCostForUnit} c/u
    Precio unitario: S/. ${item.product.priceWithDiscount}$comment$extrasFood$optionsFoodOneSelection$optionsFoodForMultiple
   ''';
    }).join('\n');

    final plantilla = '''
\u{1F44B} Hola! Me gustaría realizar un pedido.
Vengo de $baseUrl
\u{1F4C5} $fechaDePedido \u{23F0} $horaDePedido

*Tipo de servicio: $serviceText*

Nombre: $contactName
Teléfono: $contactPhone$contactDirection

*Método de pago: [METODO_PAGO]*

Monto a recibir: [MONTO_RECIBIR]
Cambio: [CAMBIO]

💲 *Costos*
Costo de los productos: ${cart.totalCost}$deliveryCost

*Total a pagar: ${cart.totalCost + establishment.deliveryCost}*

\u{1F4DD} *Pedido*

$itemsDetail
\u{261D} Por favor, envía este mensaje. ¡Te atenderemos enseguida!''';
    final url = Uri.parse(
        'https://wa.me/${establishment.whatsappNumber}?text=$plantilla');
    await launchUrl(url);
  }
}
