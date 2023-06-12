import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/payment.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/network_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/schedule_dto.dart';

part 'establishment_dto.freezed.dart';
part 'establishment_dto.g.dart';

@freezed
class EstablishmentDto with _$EstablishmentDto {
  static const CategoriesField = 'categories';
  factory EstablishmentDto({
    required String name,
    required Schedule schedule,
    @JsonKey(name: 'id_url') required String idUrl,
    @JsonKey(name: 'banner_url') required String bannerUrl,
    @JsonKey(name: 'profile_image') required String profileImage,
    @JsonKey(name: 'payment_methods', defaultValue: <String>[])
    required List<String> paymentMethodsTypes,
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    @JsonKey(name: 'delevery_cost') @Default(0) double deliveryCost,
    @JsonKey(name: 'local_direction') @Default('') String localDirection,
    @JsonKey(name: 'whatsapp_number') @Default('') String whatsappNumber,
    @Default('') String description,
    @JsonKey(name: 'social_network')
    @Default([])
    List<SocialNetworkDto> socialNetwork,
    @Default(Modifiers()) Modifiers modifiers,
    @JsonKey(name: EstablishmentDto.CategoriesField)
    @Default([])
    List<CategoriesDto> categories,
  }) = _EstablishmentDto;

  const EstablishmentDto._();

  List<Payment> get paymentMethods =>
      paymentMethodsTypes.map(Payment.fromString).toList();

  bool hasProduct(String? uuid) {
    return categories
        .any((cat) => cat.products.any((element) => element.uuid == uuid));
  }

  Option<ProductDto> findProduct(String? uuid) {
    try {
      return some(categories
          .expand((cat) => cat.products)
          .firstWhere((prod) => prod.uuid == uuid));
    } catch (e) {
      return none();
    }
  }

  factory EstablishmentDto.fromJson(Map<String, dynamic> json) =>
      _$EstablishmentDtoFromJson(json);

  factory EstablishmentDto.newDto(String name) => EstablishmentDto(
      paymentMethodsTypes: [],
      bannerUrl:
          'https://ops-dra.agcstorage.link/v0/pedido-listo-storage-0kurd/fondo_default.jpg',
      name: name.trim(),
      profileImage:
          'https://ops-dra.agcstorage.link/v0/pedido-listo-storage-0kurd/logo_default.png',
      schedule: const Schedule(),
      idUrl: convertNameToIdUrl(name));

  static String convertNameToIdUrl(String name) =>
      name.trim().toLowerCase().replaceAll(RegExp(' '), '-');
}
