import 'package:collection/collection.dart';

class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  @override
  String toString() {
    return 'Pdf(isAvailable: $isAvailable, acsTokenLink: $acsTokenLink)';
  }

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable'] as bool?,
        acsTokenLink: json['acsTokenLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
        'acsTokenLink': acsTokenLink,
      };

  Pdf copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    return Pdf(
      isAvailable: isAvailable ?? this.isAvailable,
      acsTokenLink: acsTokenLink ?? this.acsTokenLink,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Pdf) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => isAvailable.hashCode ^ acsTokenLink.hashCode;
}
