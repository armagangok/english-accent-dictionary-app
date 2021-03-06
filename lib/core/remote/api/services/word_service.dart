import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../feature/export/export.dart';
import '../models/word_model.dart';

class WordService {
  Future<WordModel?> fetchWord(String text) async {
    try {
      print(text);

      final response = await http.get(
        Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$text'),
      );

      print(response);
      if (response.statusCode == 200) {
        var a = (WordModel.fromMap(jsonDecode(response.body)[0]));

        return a;
      } else {
        Get.snackbar(
          "",
          jsonDecode(response.body)["message"],
        );
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
