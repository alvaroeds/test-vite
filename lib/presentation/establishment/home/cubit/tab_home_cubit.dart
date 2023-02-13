import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_home_state.dart';
part 'tab_home_cubit.freezed.dart';

class TabHomeCubit extends Cubit<TabHomeState> {
  TabHomeCubit() : super(const TabHomeState(0));

  void changeIndex(int newIndex) => emit(TabHomeState(newIndex));
}
