import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_template_entity.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';

import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class MakeOrderUseCase {
  final IGetCurrentUrl _getCurrentUrl;
  final ILaunchOrderUrl _launchDeliveryOrderUrl;

  const MakeOrderUseCase(this._getCurrentUrl, this._launchDeliveryOrderUrl);

  Future<Either<Unit, Unit>> execute(
    ShoppingCartDto cart,
    EstablishmentDto establishment, {
    required String contactName,
    required String contactPhone,
    required Option<String> address,
    required String additionalDetail,
    required String paymentMethod,
    required double cash,
  }) async {
    final orderTemplate = OrderTemplateEntity.build(
      currentUrl: _getCurrentUrl(establishment.idUrl),
      contactName: contactName,
      contactPhone: contactPhone,
      address: address,
      additionalDetail: additionalDetail,
      paymentMethod: paymentMethod,
      cash: cash,
      totalCostOfShoppingCart: cart.totalCost,
      deliveryCost: establishment.deliveryCost,
      cartItems: cart.items,
    );

    final url = orderTemplate.generateUrl(establishment.whatsappNumber);

    return _launchDeliveryOrderUrl(url);
  }
}
