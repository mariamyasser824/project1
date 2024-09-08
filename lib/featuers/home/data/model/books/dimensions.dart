import 'dart:convert';

class Dimensions {
  String? height;
  String? width;
  String? thickness;

  Dimensions({this.height, this.width, this.thickness});

  @override
  String toString() {
    return 'Dimensions(height: $height, width: $width, thickness: $thickness)';
  }

  factory Dimensions.fromMap(Map<String, dynamic> data) => Dimensions(
        height: data['height'] as String?,
        width: data['width'] as String?,
        thickness: data['thickness'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'height': height,
        'width': width,
        'thickness': thickness,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Dimensions].
  factory Dimensions.fromJson(String data) {
    return Dimensions.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Dimensions] to a JSON string.
  String toJson() => json.encode(toMap());

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
}
