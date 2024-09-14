import 'package:collection/collection.dart';

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;
  String? small;
  String? medium;
  String? large;
  String? extraLarge;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.extraLarge,
  });

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail, small: $small, medium: $medium, large: $large, extraLarge: $extraLarge)';
  }

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json['smallThumbnail'] as String?,
        thumbnail: json['thumbnail'] as String?,
        small: json['small'] as String?,
        medium: json['medium'] as String?,
        large: json['large'] as String?,
        extraLarge: json['extraLarge'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'extraLarge': extraLarge,
      };

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
    String? small,
    String? medium,
    String? large,
    String? extraLarge,
  }) {
    return ImageLinks(
      smallThumbnail: smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ImageLinks) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      smallThumbnail.hashCode ^
      thumbnail.hashCode ^
      small.hashCode ^
      medium.hashCode ^
      large.hashCode ^
      extraLarge.hashCode;
}
