import 'package:collection/collection.dart';

import 'dimensions.dart';
import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  int? printedPageCount;
  Dimensions? dimensions;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printedPageCount,
    this.dimensions,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  @override
  String toString() {
    return 'VolumeInfo(title: $title, subtitle: $subtitle, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printedPageCount: $printedPageCount, dimensions: $dimensions, printType: $printType, categories: $categories, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, panelizationSummary: $panelizationSummary, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        subtitle: json['subtitle'] as String?,
        authors: json['authors'] as List<String>?,
        publisher: json['publisher'] as String?,
        publishedDate: json['publishedDate'] as String?,
        description: json['description'] as String?,
        industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
            .toList(),
        readingModes: json['readingModes'] == null
            ? null
            : ReadingModes.fromJson(
                json['readingModes'] as Map<String, dynamic>),
        pageCount: json['pageCount'] as int?,
        printedPageCount: json['printedPageCount'] as int?,
        dimensions: json['dimensions'] == null
            ? null
            : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
        printType: json['printType'] as String?,
        categories: json['categories'] as List<String>?,
        maturityRating: json['maturityRating'] as String?,
        allowAnonLogging: json['allowAnonLogging'] as bool?,
        contentVersion: json['contentVersion'] as String?,
        panelizationSummary: json['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromJson(
                json['panelizationSummary'] as Map<String, dynamic>),
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
        language: json['language'] as String?,
        previewLink: json['previewLink'] as String?,
        infoLink: json['infoLink'] as String?,
        canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers':
            industryIdentifiers?.map((e) => e.toJson()).toList(),
        'readingModes': readingModes?.toJson(),
        'pageCount': pageCount,
        'printedPageCount': printedPageCount,
        'dimensions': dimensions?.toJson(),
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toJson(),
        'imageLinks': imageLinks?.toJson(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };

  VolumeInfo copyWith({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    ReadingModes? readingModes,
    int? pageCount,
    int? printedPageCount,
    Dimensions? dimensions,
    String? printType,
    List<String>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    return VolumeInfo(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      authors: authors ?? this.authors,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      description: description ?? this.description,
      industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
      readingModes: readingModes ?? this.readingModes,
      pageCount: pageCount ?? this.pageCount,
      printedPageCount: printedPageCount ?? this.printedPageCount,
      dimensions: dimensions ?? this.dimensions,
      printType: printType ?? this.printType,
      categories: categories ?? this.categories,
      maturityRating: maturityRating ?? this.maturityRating,
      allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
      contentVersion: contentVersion ?? this.contentVersion,
      panelizationSummary: panelizationSummary ?? this.panelizationSummary,
      imageLinks: imageLinks ?? this.imageLinks,
      language: language ?? this.language,
      previewLink: previewLink ?? this.previewLink,
      infoLink: infoLink ?? this.infoLink,
      canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! VolumeInfo) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      title.hashCode ^
      subtitle.hashCode ^
      authors.hashCode ^
      publisher.hashCode ^
      publishedDate.hashCode ^
      description.hashCode ^
      industryIdentifiers.hashCode ^
      readingModes.hashCode ^
      pageCount.hashCode ^
      printedPageCount.hashCode ^
      dimensions.hashCode ^
      printType.hashCode ^
      categories.hashCode ^
      maturityRating.hashCode ^
      allowAnonLogging.hashCode ^
      contentVersion.hashCode ^
      panelizationSummary.hashCode ^
      imageLinks.hashCode ^
      language.hashCode ^
      previewLink.hashCode ^
      infoLink.hashCode ^
      canonicalVolumeLink.hashCode;
}
