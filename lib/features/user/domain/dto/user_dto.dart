import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String uuid,
    @Default('') String name,
    @Default('') String phone,
    @Default(<AddressDto>[]) List<AddressDto> addresses,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.create() {
    return UserDto(
      uuid: Uuid().generateV4(),
    );
  }
}
