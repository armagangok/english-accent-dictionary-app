import 'package:flutter/material.dart';
import 'save_language_time_button.dart';

PreferredSizeWidget appBar( countryLanguage) {
  return AppBar(
    title: Text(
      "Settings",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w900,
      ),
    ),
    actions: [
      saveLanguageTimeButton( countryLanguage),
    ],
  );
}