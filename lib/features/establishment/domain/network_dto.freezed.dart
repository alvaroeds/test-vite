// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialNetworkDto _$SocialNetworkDtoFromJson(Map<String, dynamic> json) {
  return _SocialNetworkDto.fromJson(json);
}

/// @nodoc
mixin _$SocialNetworkDto {
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialNetworkDtoCopyWith<SocialNetworkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialNetworkDtoCopyWith<$Res> {
  factory $SocialNetworkDtoCopyWith(
          SocialNetworkDto value, $Res Function(SocialNetworkDto) then) =
      _$SocialNetworkDtoCopyWithImpl<$Res, SocialNetworkDto>;
  @useResult
  $Res call({String url, String type});
}

/// @nodoc
class _$SocialNetworkDtoCopyWithImpl<$Res, $Val extends SocialNetworkDto>
    implements $SocialNetworkDtoCopyWith<$Res> {
  _$SocialNetworkDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialNetworkDtoCopyWith<$Res>
    implements $SocialNetworkDtoCopyWith<$Res> {
  factory _$$_SocialNetworkDtoCopyWith(
          _$_SocialNetworkDto value, $Res Function(_$_SocialNetworkDto) then) =
      __$$_SocialNetworkDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String type});
}

/// @nodoc
class __$$_SocialNetworkDtoCopyWithImpl<$Res>
    extends _$SocialNetworkDtoCopyWithImpl<$Res, _$_SocialNetworkDto>
    implements _$$_SocialNetworkDtoCopyWith<$Res> {
  __$$_SocialNetworkDtoCopyWithImpl(
      _$_SocialNetworkDto _value, $Res Function(_$_SocialNetworkDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$_SocialNetworkDto(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialNetworkDto extends _SocialNetworkDto {
  const _$_SocialNetworkDto({required this.url, required this.type})
      : super._();

  factory _$_SocialNetworkDto.fromJson(Map<String, dynamic> json) =>
      _$$_SocialNetworkDtoFromJson(json);

  @override
  final String url;
  @override
  final String type;

  @override
  String toString() {
    return 'SocialNetworkDto(url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialNetworkDto &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialNetworkDtoCopyWith<_$_SocialNetworkDto> get copyWith =>
      __$$_SocialNetworkDtoCopyWithImpl<_$_SocialNetworkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialNetworkDtoToJson(
      this,
    );
  }
}

abstract class _SocialNetworkDto extends SocialNetworkDto {
  const factory _SocialNetworkDto(
      {required final String url,
      required final String type}) = _$_SocialNetworkDto;
  const _SocialNetworkDto._() : super._();

  factory _SocialNetworkDto.fromJson(Map<String, dynamic> json) =
      _$_SocialNetworkDto.fromJson;

  @override
  String get url;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SocialNetworkDtoCopyWith<_$_SocialNetworkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

NetworkType _$NetworkTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'facebook':
      return Facebook.fromJson(json);
    case 'twitter':
      return Twitter.fromJson(json);
    case 'tiktok':
      return TikTok.fromJson(json);
    case 'other':
      return Other.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NetworkType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NetworkType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() twitter,
    required TResult Function() tiktok,
    required TResult Function() other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? facebook,
    TResult? Function()? twitter,
    TResult? Function()? tiktok,
    TResult? Function()? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? twitter,
    TResult Function()? tiktok,
    TResult Function()? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Facebook value) facebook,
    required TResult Function(Twitter value) twitter,
    required TResult Function(TikTok value) tiktok,
    required TResult Function(Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Twitter value)? twitter,
    TResult? Function(TikTok value)? tiktok,
    TResult? Function(Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Facebook value)? facebook,
    TResult Function(Twitter value)? twitter,
    TResult Function(TikTok value)? tiktok,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkTypeCopyWith<$Res> {
  factory $NetworkTypeCopyWith(
          NetworkType value, $Res Function(NetworkType) then) =
      _$NetworkTypeCopyWithImpl<$Res, NetworkType>;
}

/// @nodoc
class _$NetworkTypeCopyWithImpl<$Res, $Val extends NetworkType>
    implements $NetworkTypeCopyWith<$Res> {
  _$NetworkTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FacebookCopyWith<$Res> {
  factory _$$FacebookCopyWith(
          _$Facebook value, $Res Function(_$Facebook) then) =
      __$$FacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacebookCopyWithImpl<$Res>
    extends _$NetworkTypeCopyWithImpl<$Res, _$Facebook>
    implements _$$FacebookCopyWith<$Res> {
  __$$FacebookCopyWithImpl(_$Facebook _value, $Res Function(_$Facebook) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Facebook implements Facebook {
  const _$Facebook({final String? $type}) : $type = $type ?? 'facebook';

  factory _$Facebook.fromJson(Map<String, dynamic> json) =>
      _$$FacebookFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkType.facebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Facebook);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() twitter,
    required TResult Function() tiktok,
    required TResult Function() other,
  }) {
    return facebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? facebook,
    TResult? Function()? twitter,
    TResult? Function()? tiktok,
    TResult? Function()? other,
  }) {
    return facebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? twitter,
    TResult Function()? tiktok,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Facebook value) facebook,
    required TResult Function(Twitter value) twitter,
    required TResult Function(TikTok value) tiktok,
    required TResult Function(Other value) other,
  }) {
    return facebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Twitter value)? twitter,
    TResult? Function(TikTok value)? tiktok,
    TResult? Function(Other value)? other,
  }) {
    return facebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Facebook value)? facebook,
    TResult Function(Twitter value)? twitter,
    TResult Function(TikTok value)? tiktok,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FacebookToJson(
      this,
    );
  }
}

abstract class Facebook implements NetworkType {
  const factory Facebook() = _$Facebook;

  factory Facebook.fromJson(Map<String, dynamic> json) = _$Facebook.fromJson;
}

/// @nodoc
abstract class _$$TwitterCopyWith<$Res> {
  factory _$$TwitterCopyWith(_$Twitter value, $Res Function(_$Twitter) then) =
      __$$TwitterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TwitterCopyWithImpl<$Res>
    extends _$NetworkTypeCopyWithImpl<$Res, _$Twitter>
    implements _$$TwitterCopyWith<$Res> {
  __$$TwitterCopyWithImpl(_$Twitter _value, $Res Function(_$Twitter) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Twitter implements Twitter {
  const _$Twitter({final String? $type}) : $type = $type ?? 'twitter';

  factory _$Twitter.fromJson(Map<String, dynamic> json) =>
      _$$TwitterFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkType.twitter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Twitter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() twitter,
    required TResult Function() tiktok,
    required TResult Function() other,
  }) {
    return twitter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? facebook,
    TResult? Function()? twitter,
    TResult? Function()? tiktok,
    TResult? Function()? other,
  }) {
    return twitter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? twitter,
    TResult Function()? tiktok,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Facebook value) facebook,
    required TResult Function(Twitter value) twitter,
    required TResult Function(TikTok value) tiktok,
    required TResult Function(Other value) other,
  }) {
    return twitter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Twitter value)? twitter,
    TResult? Function(TikTok value)? tiktok,
    TResult? Function(Other value)? other,
  }) {
    return twitter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Facebook value)? facebook,
    TResult Function(Twitter value)? twitter,
    TResult Function(TikTok value)? tiktok,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitterToJson(
      this,
    );
  }
}

abstract class Twitter implements NetworkType {
  const factory Twitter() = _$Twitter;

  factory Twitter.fromJson(Map<String, dynamic> json) = _$Twitter.fromJson;
}

/// @nodoc
abstract class _$$TikTokCopyWith<$Res> {
  factory _$$TikTokCopyWith(_$TikTok value, $Res Function(_$TikTok) then) =
      __$$TikTokCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TikTokCopyWithImpl<$Res>
    extends _$NetworkTypeCopyWithImpl<$Res, _$TikTok>
    implements _$$TikTokCopyWith<$Res> {
  __$$TikTokCopyWithImpl(_$TikTok _value, $Res Function(_$TikTok) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TikTok implements TikTok {
  const _$TikTok({final String? $type}) : $type = $type ?? 'tiktok';

  factory _$TikTok.fromJson(Map<String, dynamic> json) =>
      _$$TikTokFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkType.tiktok()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TikTok);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() twitter,
    required TResult Function() tiktok,
    required TResult Function() other,
  }) {
    return tiktok();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? facebook,
    TResult? Function()? twitter,
    TResult? Function()? tiktok,
    TResult? Function()? other,
  }) {
    return tiktok?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? twitter,
    TResult Function()? tiktok,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (tiktok != null) {
      return tiktok();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Facebook value) facebook,
    required TResult Function(Twitter value) twitter,
    required TResult Function(TikTok value) tiktok,
    required TResult Function(Other value) other,
  }) {
    return tiktok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Twitter value)? twitter,
    TResult? Function(TikTok value)? tiktok,
    TResult? Function(Other value)? other,
  }) {
    return tiktok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Facebook value)? facebook,
    TResult Function(Twitter value)? twitter,
    TResult Function(TikTok value)? tiktok,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (tiktok != null) {
      return tiktok(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TikTokToJson(
      this,
    );
  }
}

abstract class TikTok implements NetworkType {
  const factory TikTok() = _$TikTok;

  factory TikTok.fromJson(Map<String, dynamic> json) = _$TikTok.fromJson;
}

/// @nodoc
abstract class _$$OtherCopyWith<$Res> {
  factory _$$OtherCopyWith(_$Other value, $Res Function(_$Other) then) =
      __$$OtherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtherCopyWithImpl<$Res>
    extends _$NetworkTypeCopyWithImpl<$Res, _$Other>
    implements _$$OtherCopyWith<$Res> {
  __$$OtherCopyWithImpl(_$Other _value, $Res Function(_$Other) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Other implements Other {
  const _$Other({final String? $type}) : $type = $type ?? 'other';

  factory _$Other.fromJson(Map<String, dynamic> json) => _$$OtherFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkType.other()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Other);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() twitter,
    required TResult Function() tiktok,
    required TResult Function() other,
  }) {
    return other();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? facebook,
    TResult? Function()? twitter,
    TResult? Function()? tiktok,
    TResult? Function()? other,
  }) {
    return other?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? twitter,
    TResult Function()? tiktok,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Facebook value) facebook,
    required TResult Function(Twitter value) twitter,
    required TResult Function(TikTok value) tiktok,
    required TResult Function(Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Twitter value)? twitter,
    TResult? Function(TikTok value)? tiktok,
    TResult? Function(Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Facebook value)? facebook,
    TResult Function(Twitter value)? twitter,
    TResult Function(TikTok value)? tiktok,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherToJson(
      this,
    );
  }
}

abstract class Other implements NetworkType {
  const factory Other() = _$Other;

  factory Other.fromJson(Map<String, dynamic> json) = _$Other.fromJson;
}
