import 'dart:convert';

import 'dimensions.dart';
import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
  String? title;
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
    return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printedPageCount: $printedPageCount, dimensions: $dimensions, printType: $printType, categories: $categories, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, panelizationSummary: $panelizationSummary, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  factory VolumeInfo.fromMap(Map<String, dynamic> data) => VolumeInfo(
        title: data['title'] as String?,
        authors: data['authors'] as List<String>?,
        publisher: data['publisher'] as String?,
        publishedDate: data['publishedDate'] as String?,
        description: data['description'] as String?,
        industryIdentifiers: (data['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) => IndustryIdentifier.fromMap(e as Map<String, dynamic>))
            .toList(),
        readingModes: data['readingModes'] == null
            ? null
            : ReadingModes.fromMap(
                data['readingModes'] as Map<String, dynamic>),
        pageCount: data['pageCount'] as int?,
        printedPageCount: data['printedPageCount'] as int?,
        dimensions: data['dimensions'] == null
            ? null
            : Dimensions.fromMap(data['dimensions'] as Map<String, dynamic>),
        printType: data['printType'] as String?,
        categories: data['categories'] as List<String>?,
        maturityRating: data['maturityRating'] as String?,
        allowAnonLogging: data['allowAnonLogging'] as bool?,
        contentVersion: data['contentVersion'] as String?,
        panelizationSummary: data['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromMap(
                data['panelizationSummary'] as Map<String, dynamic>),
        imageLinks: data['imageLinks'] == null
            ? null
            : ImageLinks.fromMap(data['imageLinks'] as Map<String, dynamic>),
        language: data['language'] as String?,
        previewLink: data['previewLink'] as String?,
        infoLink: data['infoLink'] as String?,
        canonicalVolumeLink: data['canonicalVolumeLink'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers':
            industryIdentifiers?.map((e) => e.toMap()).toList(),
        'readingModes': readingModes?.toMap(),
        'pageCount': pageCount,
        'printedPageCount': printedPageCount,
        'dimensions': dimensions?.toMap(),
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toMap(),
        'imageLinks': imageLinks?.toMap(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VolumeInfo].
  factory VolumeInfo.fromJson(String data) {
    return VolumeInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [VolumeInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  VolumeInfo copyWith({
    String? title,
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
}
