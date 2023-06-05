import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/shared/core/uuid.dart';
export 'package:pedido_listo_web/features/shared/core/uuid.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    required String uuid,
    required String reference,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  factory AddressDto.create(String reference) {
    return AddressDto(
      uuid: Uuid().generateV4(),
      reference: reference,
    );
  }
}
