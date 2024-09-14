import 'package:collection/collection.dart';

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  @override
  String toString() {
    return 'IndustryIdentifier(type: $type, identifier: $identifier)';
  }

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String?,
      identifier: json['identifier'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'type': type,
        'identifier': identifier,
      };

  IndustryIdentifier copyWith({
    String? type,
    String? identifier,
  }) {
    return IndustryIdentifier(
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! IndustryIdentifier) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => type.hashCode ^ identifier.hashCode;
}
