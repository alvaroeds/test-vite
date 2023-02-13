import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/shopping_car/domain/shopping_car_dto.dart';

part 'shopping_car_event.dart';
part 'shopping_car_state.dart';
part 'shopping_car_bloc.freezed.dart';

class ShoppingCarBloc extends Bloc<ShoppingCarEvent, ShoppingCarState> {
  ShoppingCarBloc() : super(const _Initial()) {
    on<ShoppingCarEvent>((event, emit) {});
  }
}
