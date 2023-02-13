import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_dto.freezed.dart';
part 'network_dto.g.dart';

@freezed
class SocialNetworkDto with _$SocialNetworkDto {
  const factory SocialNetworkDto({
    required String url,
    required String type,
  }) = _SocialNetworkDto;
  const SocialNetworkDto._();

  NetworkType get networkType => NetworkType.fromServer(toJson());

  factory SocialNetworkDto.fromJson(Map<String, dynamic> json) =>
      _$SocialNetworkDtoFromJson(json);
}

@freezed
class NetworkType with _$NetworkType {
  const factory NetworkType.facebook() = Facebook;
  const factory NetworkType.twitter() = Twitter;
  const factory NetworkType.tiktok() = TikTok;
  const factory NetworkType.other() = Other;

  factory NetworkType.fromJson(Map<String, dynamic> json) =>
      _$NetworkTypeFromJson(json);

  factory NetworkType.fromServer(Map<String, dynamic> json) {
    try {
      return NetworkType.fromJson(json);
    } catch (e) {
      return const NetworkType.other();
    }
  }
}
