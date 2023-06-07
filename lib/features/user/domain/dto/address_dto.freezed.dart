// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  String get uuid => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call({String uuid, String reference});
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? reference = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressDtoCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$_AddressDtoCopyWith(
          _$_AddressDto value, $Res Function(_$_AddressDto) then) =
      __$$_AddressDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String reference});
}

/// @nodoc
class __$$_AddressDtoCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$_AddressDto>
    implements _$$_AddressDtoCopyWith<$Res> {
  __$$_AddressDtoCopyWithImpl(
      _$_AddressDto _value, $Res Function(_$_AddressDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? reference = null,
  }) {
    return _then(_$_AddressDto(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressDto implements _AddressDto {
  const _$_AddressDto({required this.uuid, required this.reference});

  factory _$_AddressDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDtoFromJson(json);

  @override
  final String uuid;
  @override
  final String reference;

  @override
  String toString() {
    return 'AddressDto(uuid: $uuid, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDto &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDtoCopyWith<_$_AddressDto> get copyWith =>
      __$$_AddressDtoCopyWithImpl<_$_AddressDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDtoToJson(
      this,
    );
  }
}

abstract class _AddressDto implements AddressDto {
  const factory _AddressDto(
      {required final String uuid,
      required final String reference}) = _$_AddressDto;

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$_AddressDto.fromJson;

  @override
  String get uuid;
  @override
  String get reference;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDtoCopyWith<_$_AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}
