import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_template_entity.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';

class SendOrderUseCase {
  final ILaunchOrderUrl _launchOrderUrl;

  const SendOrderUseCase(this._launchOrderUrl);

  Future<Either<Unit, Unit>> execute(
    SummaryDto summaryOrderDto, {
    required String whatsappNumber,
  }) async {
    final orderTemplate = OrderTemplateEntity.build(
      currentUrl: summaryOrderDto.establishmentHost,
      contactName: summaryOrderDto.clientName,
      contactPhone: summaryOrderDto.clientPhone,
      address: optionOf(summaryOrderDto.addressOfDelivery),
      additionalDetail: summaryOrderDto.additionalAddressDetail,
      paymentMethod: summaryOrderDto.methodOfPayment,
      cash: summaryOrderDto.cashOfClient,
      totalCostOfShoppingCart: summaryOrderDto.totalCost,
      deliveryCost: summaryOrderDto.deliveryCost,
      cartItems: summaryOrderDto.summaryOfProducts,
    );

    final url = orderTemplate.generateUrl(whatsappNumber);

    return _launchOrderUrl(url);
  }
}
