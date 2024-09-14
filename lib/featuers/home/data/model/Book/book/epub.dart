import 'package:collection/collection.dart';

class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  @override
  String toString() => 'Epub(isAvailable: $isAvailable)';

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
      };

  Epub copyWith({
    bool? isAvailable,
  }) {
    return Epub(
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Epub) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => isAvailable.hashCode;
}
