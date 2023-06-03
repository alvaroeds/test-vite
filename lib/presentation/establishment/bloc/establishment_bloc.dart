import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

part 'establishment_event.dart';
part 'establishment_state.dart';
part 'establishment_bloc.freezed.dart';

class EstablishmentBloc extends Bloc<EstablishmentEvent, EstablishmentState> {
  final IEstablishmentRepository repository;

  EstablishmentBloc(this.repository) : super(const _Initial()) {
    on<EstablishmentEvent>(
      (event, emit) async {
        emit(const EstablishmentState.initial());
        if (event is _Started) {
          await emit.forEach(
            repository.getEstablishment(event.name),
            onData: (data) {
              return data.fold(
                EstablishmentState.isError,
                EstablishmentState.hasData,
              );
            },
          );
        }
      },
      transformer: restartable(),
    );
  }
}
