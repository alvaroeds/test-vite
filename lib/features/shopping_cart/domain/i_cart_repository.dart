import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

abstract interface class InterfaceCartRepository {
  Future<bool> saveCart(ShoppingCartDto shoppingCartDto);
  Future<Option<ShoppingCartDto>> loadCart(String uuid);
}
