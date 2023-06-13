import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';

import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class MakeOrderUseCase {
  final IGetCurrentUrl _getCurrentUrl;

  final IOrderSummaryRepository _orderSummaryRepository;

  const MakeOrderUseCase(this._getCurrentUrl, this._orderSummaryRepository);

  Future<RespondOnSave> execute(
    ShoppingCartDto cart,
    EstablishmentDto establishment, {
    required String contactName,
    required String contactPhone,
    required Option<String> address,
    required String additionalDetail,
    required String paymentMethod,
    required double cash,
  }) async {
    final currentDate = DateTime.now();

    final summaryDto = SummaryDto(
      additionalAddressDetail: additionalDetail,
      establishmentId: establishment.id.toString(),
      nroOrder: currentDate.millisecondsSinceEpoch.toString(),
      cashOfClient: cash,
      costOfProducts: cart.totalCost,
      deliveryCost: address.fold(() => 0, (a) => establishment.deliveryCost),
      clientPhone: contactPhone,
      clientName: contactName,
      deliveryDate: currentDate,
      deliveryDateOnMilliseconds: currentDate.millisecondsSinceEpoch,
      establishmentAddress: establishment.localDirection,
      establishmentHost: _getCurrentUrl(establishment.idUrl),
      addressOfDelivery: address.fold(() => null, (a) => a),
      methodOfPayment: paymentMethod,
      summaryOfProducts: cart.items
          .map((item) => SummaryProduct(
                  name: item.product.name,
                  price: item.product.price,
                  quantity: item.quantity,
                  comment: item.comment,
                  image: item.product.images.firstOrNull,
                  modifiers: [
                    ...item.extrasFood.map((modifier) => SummaryModifier(
                          name: modifier.extraFood.name,
                          quantity: modifier.quantity,
                          price: modifier.extraFood.price,
                        )),
                    ...item.optionsFoodOneSelection
                        .map((modifier) => SummaryModifier(
                              name: modifier.optionFood.name,
                              quantity: 1,
                              price: modifier.optionFood.price,
                            )),
                    ...item.optionsFoodForMultiple
                        .map((modifier) => SummaryModifier(
                              name: modifier.optionFood.name,
                              quantity: 1,
                              price: modifier.optionFood.price,
                            )),
                  ]))
          .toList(),
    );

    return _orderSummaryRepository.saveOrderSummary(summaryDto);
  }
}
