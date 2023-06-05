import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/i_cart_repository.dart';

import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class LoadCartUseCase {
  final InterfaceCartRepository _cartRepository;

  LoadCartUseCase(this._cartRepository);

  Future<Option<ShoppingCartDto>> execute(String idUrl) {
    return _cartRepository.loadCart(idUrl);
  }
}
