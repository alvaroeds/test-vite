import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/i_cart_repository.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesCartRepository implements InterfaceCartRepository {
  final SharedPreferences sharedPreferences;

  PreferencesCartRepository(this.sharedPreferences);

/*   static Future<PreferencesCartRepository> instance() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return PreferencesCartRepository._(sharedPreferences);
  } */

  @override
  Future<Option<ShoppingCartDto>> loadCart(String uuid) async {
    final dataString = sharedPreferences.getString(uuid);

    return optionOf(dataString).map((dataString) {
      final data = json.decode(dataString);

      final shoppingCartDto =
          ShoppingCartDto.fromJson(data as Map<String, dynamic>);

      return shoppingCartDto;
    });
  }

  @override
  Future<bool> saveCart(ShoppingCartDto shoppingCartDto) async {
    return sharedPreferences.setString(
        shoppingCartDto.uuid, json.encode(shoppingCartDto.toJson()));
  }
}
