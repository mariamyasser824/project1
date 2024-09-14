import 'package:collection/collection.dart';

class Dimensions {
  String? height;
  String? width;
  String? thickness;

  Dimensions({this.height, this.width, this.thickness});

  @override
  String toString() {
    return 'Dimensions(height: $height, width: $width, thickness: $thickness)';
  }

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json['height'] as String?,
        width: json['width'] as String?,
        thickness: json['thickness'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'width': width,
        'thickness': thickness,
      };

  Dimensions copyWith({
    String? height,
    String? width,
    String? thickness,
  }) {
    return Dimensions(
      height: height ?? this.height,
      width: width ?? this.width,
      thickness: thickness ?? this.thickness,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Dimensions) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => height.hashCode ^ width.hashCode ^ thickness.hashCode;
}
