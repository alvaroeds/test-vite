import 'package:pedido_listo_web/features/shopping_cart/domain/i_cart_repository.dart';

import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class SaveCartUseCase {
  final ICartRepository _cartRepository;

  SaveCartUseCase(this._cartRepository);

  Future<bool> execute(ShoppingCartDto cart) {
    return _cartRepository.saveCart(cart);
  }
}
