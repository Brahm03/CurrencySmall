import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apptheme {
  static get dark => ThemeData(
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: CupertinoColors.activeBlue
    )
  );
}