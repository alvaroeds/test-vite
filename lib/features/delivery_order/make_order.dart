import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';

import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class MakeOrderUseCase {
  static Future<void> execute(
    ShoppingCartDto cart,
    EstablishmentDto establishment, {
    required String contactName,
    required String contactPhone,
    required Option<String> address,
    required String additionalDetail,
  }) async {
    final host = Uri.parse(html.window.location.href).host;
    final horaDePedido = DateTime.now().toLocal().toString().split(' ')[1];
    final fechaDePedido = DateTime.now().toLocal().toString().split(' ')[0];

    final serviceText = address.fold(
      () => 'Recojo',
      (_) => 'Domicilio',
    );
    final contactDirection = address.fold(
      () => '\n',
      (address) => 'Dirección: $address\n$additionalDetail\n',
    );

    final itemsDetail = cart.items.map((item) {
      final comment = item.comment.trim().isEmpty
          ? ''
          : '\n    Comentario: ${item.comment}';

      final extrasFood = item.extrasFood.isEmpty
          ? ''
          : '\n    ${item.extrasFood.map((topic) => '${topic.amount} ${topic.extraFood.name} S/. ${topic.extraFood.price}').join('\n')}';
      final optionsFoodOneSelection = item.optionsFoodOneSelection.isEmpty
          ? ''
          : '\n    ${item.optionsFoodOneSelection.map((topic) => '${topic.optionFood.name} S/. ${topic.optionFood.price}').join('\n')}';
      final optionsFoodForMultiple = item.optionsFoodForMultiple.isEmpty
          ? ''
          : '\n    ${item.optionsFoodForMultiple.map((topic) => '${topic.optionFood.name} S/. ${topic.optionFood.price}').join('\n')}';
      return '''
    ${item.amount} ${item.product.name} S/. ${item.totalCostForUnit} c/u
    Precio unitario: S/. ${item.product.price}$comment$extrasFood$optionsFoodOneSelection$optionsFoodForMultiple
   ''';
    }).join('\n');

    final plantilla = '''
😅 Hola! Me gustaría realizar un pedido.
Vengo de $host
🗓️ $fechaDePedido ⏰ $horaDePedido

*Tipo de servicio: $serviceText*

Nombre: $contactName
Teléfono: $contactPhone
$contactDirection
*Método de pago: [METODO_PAGO]*

Monto a recibir: [MONTO_RECIBIR]
Cambio: [CAMBIO]

💲 *Costos*
Costo de los productos: ${cart.totalCost}
Costo de entrega: ${establishment.deliveryCost}

*Total a pagar: ${cart.totalCost + establishment.deliveryCost}*

📝 *Pedido*

$itemsDetail
👆 Por favor, envía este mensaje. ¡Te atenderemos enseguida!''';
    final url = Uri.parse(
        'https://wa.me/${establishment.whatsappNumber}?text=$plantilla');
    await launchUrl(url);
  }
}
