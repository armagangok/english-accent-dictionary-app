import 'dart:convert';

import 'license.dart';
import 'meaning.dart';
import 'phonetic.dart';

class WordModel {
  final String? word;
  final String? origin;
  final List<Phonetic>? phonetics;
  final List<Meaning>? meanings;
  final License? license;
  final List<dynamic>? sourceUrls;
  WordModel({
    this.word,
    this.origin,
    this.phonetics,
    this.meanings,
    this.license,
    this.sourceUrls,
  });

  WordModel copyWith({
    String? word,
    String? origin,
    List<Phonetic>? phonetics,
    List<Meaning>? meanings,
    License? license,
    List<dynamic>? sourceUrls,
  }) {
    return WordModel(
      word: word ?? this.word,
      origin: origin ?? this.origin,
      phonetics: phonetics ?? this.phonetics,
      meanings: meanings ?? this.meanings,
      license: license ?? this.license,
      sourceUrls: sourceUrls ?? this.sourceUrls,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'word': word,
      'origin': origin,
      'phonetics': phonetics?.map((x) => x.toMap()).toList(),
      'meanings': meanings?.map((x) => x.toMap()).toList(),
      'license': license?.toMap(),
      'sourceUrls': sourceUrls,
    };
  }

  factory WordModel.fromMap(Map<String, dynamic> map) {
    return WordModel(
      word: map['word'],
      origin: map['origin'],
      phonetics: map['phonetics'] != null
          ? List<Phonetic>.from(
              map['phonetics']?.map((x) => Phonetic.fromMap(x)))
          : null,
      meanings: map['meanings'] != null
          ? List<Meaning>.from(map['meanings']?.map((x) => Meaning.fromMap(x)))
          : null,
      license: map['license'] != null ? License.fromMap(map['license']) : null,
      sourceUrls: List<dynamic>.from(map['sourceUrls']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WordModel.fromJson(String source) =>
      WordModel.fromMap(json.decode(source));
}
