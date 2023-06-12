import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/application/redirect_on_404.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

part 'establishment_event.dart';
part 'establishment_state.dart';
part 'establishment_bloc.freezed.dart';

class EstablishmentBloc extends Bloc<EstablishmentEvent, EstablishmentState> {
  final IEstablishmentRepository repository;
  final RedirectOn404UseCase redirectOn404;

  EstablishmentBloc(this.repository, this.redirectOn404)
      : super(const _Initial()) {
    on<_Started>((event, emit) async {
      state.maybeWhen(
        hasData: (establishment) {
          if (establishment.idUrl != event.name) {
            add(EstablishmentEvent.streamCall(StreamAction.open, event.name));
          }
        },
        orElse: () {
          add(EstablishmentEvent.streamCall(StreamAction.open, event.name));
        },
      );
    });
    on<_RedirectOn404>((event, emit) async {
      redirectOn404();
    });
    on<_StreamCall>(
      (event, emit) async {
        switch (event.action) {
          case StreamAction.open:
            emit(const EstablishmentState.initial());
            await emit.forEach(
              repository.getEstablishment(event.name),
              onData: (data) {
                return data.fold(
                  EstablishmentState.isError,
                  EstablishmentState.hasData,
                );
              },
            );
            break;
          case StreamAction.close:
            emit(const EstablishmentState.initial());
        }
      },
      transformer: restartable(),
    );
  }
}
