// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'establishment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstablishmentDto _$EstablishmentDtoFromJson(Map<String, dynamic> json) {
  return _EstablishmentDto.fromJson(json);
}

/// @nodoc
mixin _$EstablishmentDto {
  String get name => throw _privateConstructorUsedError;
  Schedule get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_url')
  String get idUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_url')
  String get bannerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String get profileImage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_network')
  List<SocialNetworkDto> get socialNetwork =>
      throw _privateConstructorUsedError;
  Modifiers get modifiers => throw _privateConstructorUsedError;
  @JsonKey(name: EstablishmentDto.CategoriesField)
  List<CategoriesDto> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstablishmentDtoCopyWith<EstablishmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstablishmentDtoCopyWith<$Res> {
  factory $EstablishmentDtoCopyWith(
          EstablishmentDto value, $Res Function(EstablishmentDto) then) =
      _$EstablishmentDtoCopyWithImpl<$Res, EstablishmentDto>;
  @useResult
  $Res call(
      {String name,
      Schedule schedule,
      @JsonKey(name: 'id_url')
          String idUrl,
      @JsonKey(name: 'banner_url')
          String bannerUrl,
      @JsonKey(name: 'profile_image')
          String profileImage,
      String description,
      @JsonKey(name: 'social_network')
          List<SocialNetworkDto> socialNetwork,
      Modifiers modifiers,
      @JsonKey(name: EstablishmentDto.CategoriesField)
          List<CategoriesDto> categories});

  $ScheduleCopyWith<$Res> get schedule;
  $ModifiersCopyWith<$Res> get modifiers;
}

/// @nodoc
class _$EstablishmentDtoCopyWithImpl<$Res, $Val extends EstablishmentDto>
    implements $EstablishmentDtoCopyWith<$Res> {
  _$EstablishmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? schedule = null,
    Object? idUrl = null,
    Object? bannerUrl = null,
    Object? profileImage = null,
    Object? description = null,
    Object? socialNetwork = null,
    Object? modifiers = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      idUrl: null == idUrl
          ? _value.idUrl
          : idUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      socialNetwork: null == socialNetwork
          ? _value.socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as List<SocialNetworkDto>,
      modifiers: null == modifiers
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as Modifiers,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ModifiersCopyWith<$Res> get modifiers {
    return $ModifiersCopyWith<$Res>(_value.modifiers, (value) {
      return _then(_value.copyWith(modifiers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EstablishmentDtoCopyWith<$Res>
    implements $EstablishmentDtoCopyWith<$Res> {
  factory _$$_EstablishmentDtoCopyWith(
          _$_EstablishmentDto value, $Res Function(_$_EstablishmentDto) then) =
      __$$_EstablishmentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Schedule schedule,
      @JsonKey(name: 'id_url')
          String idUrl,
      @JsonKey(name: 'banner_url')
          String bannerUrl,
      @JsonKey(name: 'profile_image')
          String profileImage,
      String description,
      @JsonKey(name: 'social_network')
          List<SocialNetworkDto> socialNetwork,
      Modifiers modifiers,
      @JsonKey(name: EstablishmentDto.CategoriesField)
          List<CategoriesDto> categories});

  @override
  $ScheduleCopyWith<$Res> get schedule;
  @override
  $ModifiersCopyWith<$Res> get modifiers;
}

/// @nodoc
class __$$_EstablishmentDtoCopyWithImpl<$Res>
    extends _$EstablishmentDtoCopyWithImpl<$Res, _$_EstablishmentDto>
    implements _$$_EstablishmentDtoCopyWith<$Res> {
  __$$_EstablishmentDtoCopyWithImpl(
      _$_EstablishmentDto _value, $Res Function(_$_EstablishmentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? schedule = null,
    Object? idUrl = null,
    Object? bannerUrl = null,
    Object? profileImage = null,
    Object? description = null,
    Object? socialNetwork = null,
    Object? modifiers = null,
    Object? categories = null,
  }) {
    return _then(_$_EstablishmentDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      idUrl: null == idUrl
          ? _value.idUrl
          : idUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      socialNetwork: null == socialNetwork
          ? _value._socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as List<SocialNetworkDto>,
      modifiers: null == modifiers
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as Modifiers,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstablishmentDto extends _EstablishmentDto {
  _$_EstablishmentDto(
      {required this.name,
      required this.schedule,
      @JsonKey(name: 'id_url')
          required this.idUrl,
      @JsonKey(name: 'banner_url')
          required this.bannerUrl,
      @JsonKey(name: 'profile_image')
          required this.profileImage,
      this.description = '',
      @JsonKey(name: 'social_network')
          final List<SocialNetworkDto> socialNetwork = const [],
      this.modifiers = const Modifiers(),
      @JsonKey(name: EstablishmentDto.CategoriesField)
          final List<CategoriesDto> categories = const []})
      : _socialNetwork = socialNetwork,
        _categories = categories,
        super._();

  factory _$_EstablishmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_EstablishmentDtoFromJson(json);

  @override
  final String name;
  @override
  final Schedule schedule;
  @override
  @JsonKey(name: 'id_url')
  final String idUrl;
  @override
  @JsonKey(name: 'banner_url')
  final String bannerUrl;
  @override
  @JsonKey(name: 'profile_image')
  final String profileImage;
  @override
  @JsonKey()
  final String description;
  final List<SocialNetworkDto> _socialNetwork;
  @override
  @JsonKey(name: 'social_network')
  List<SocialNetworkDto> get socialNetwork {
    if (_socialNetwork is EqualUnmodifiableListView) return _socialNetwork;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialNetwork);
  }

  @override
  @JsonKey()
  final Modifiers modifiers;
  final List<CategoriesDto> _categories;
  @override
  @JsonKey(name: EstablishmentDto.CategoriesField)
  List<CategoriesDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'EstablishmentDto(name: $name, schedule: $schedule, idUrl: $idUrl, bannerUrl: $bannerUrl, profileImage: $profileImage, description: $description, socialNetwork: $socialNetwork, modifiers: $modifiers, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EstablishmentDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.idUrl, idUrl) || other.idUrl == idUrl) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._socialNetwork, _socialNetwork) &&
            (identical(other.modifiers, modifiers) ||
                other.modifiers == modifiers) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      schedule,
      idUrl,
      bannerUrl,
      profileImage,
      description,
      const DeepCollectionEquality().hash(_socialNetwork),
      modifiers,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EstablishmentDtoCopyWith<_$_EstablishmentDto> get copyWith =>
      __$$_EstablishmentDtoCopyWithImpl<_$_EstablishmentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EstablishmentDtoToJson(
      this,
    );
  }
}

abstract class _EstablishmentDto extends EstablishmentDto {
  factory _EstablishmentDto(
      {required final String name,
      required final Schedule schedule,
      @JsonKey(name: 'id_url')
          required final String idUrl,
      @JsonKey(name: 'banner_url')
          required final String bannerUrl,
      @JsonKey(name: 'profile_image')
          required final String profileImage,
      final String description,
      @JsonKey(name: 'social_network')
          final List<SocialNetworkDto> socialNetwork,
      final Modifiers modifiers,
      @JsonKey(name: EstablishmentDto.CategoriesField)
          final List<CategoriesDto> categories}) = _$_EstablishmentDto;
  _EstablishmentDto._() : super._();

  factory _EstablishmentDto.fromJson(Map<String, dynamic> json) =
      _$_EstablishmentDto.fromJson;

  @override
  String get name;
  @override
  Schedule get schedule;
  @override
  @JsonKey(name: 'id_url')
  String get idUrl;
  @override
  @JsonKey(name: 'banner_url')
  String get bannerUrl;
  @override
  @JsonKey(name: 'profile_image')
  String get profileImage;
  @override
  String get description;
  @override
  @JsonKey(name: 'social_network')
  List<SocialNetworkDto> get socialNetwork;
  @override
  Modifiers get modifiers;
  @override
  @JsonKey(name: EstablishmentDto.CategoriesField)
  List<CategoriesDto> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_EstablishmentDtoCopyWith<_$_EstablishmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
