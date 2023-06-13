import 'package:pedido_listo_web/features/delivery_order/domain/extions.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';

class AskAboutOrderUseCase {
  final ILaunchOrderUrl _launchOrderUrl;

  const AskAboutOrderUseCase(this._launchOrderUrl);

  static const _template = '''
👋 Hola, quisiera saber el avance de mi pedido.

⏰ [FECHA_HORA_ESTIMADA] [CODIGO_PEDIDO]
🗓 [FECHA_PEDIDO]

🔗 Enlace del pedido: [ENLACE_PEDIDO] 
''';

  Future<void> execute(
    SummaryDto summaryOrderDto, {
    required String whatsappNumber,
  }) async {
    final url =
        '${summaryOrderDto.establishmentHost}/resumen/${summaryOrderDto.nroOrder}';

    final date = DateTime.fromMillisecondsSinceEpoch(
        summaryOrderDto.deliveryDateOnMilliseconds);
    final message = _template
        .replaceAll('[FECHA_HORA_ESTIMADA]', date.timeFormat)
        .replaceAll('[CODIGO_PEDIDO]', summaryOrderDto.nroOrder)
        .replaceAll('[FECHA_PEDIDO]', date.dateFormat)
        .replaceAll('[ENLACE_PEDIDO]', url);

    final urlWhatsapp = 'https://wa.me/$whatsappNumber?text=$message';

    await _launchOrderUrl(urlWhatsapp);
  }
}
