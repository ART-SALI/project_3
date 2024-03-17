import 'package:flutter/material.dart';
import 'package:project_3/correspondence.dart';

class TelegramFolder {
  bool pressed;
  String folderName;
  List<Correspondence> inFolder = [];

  TelegramFolder({required this.folderName, this.pressed = false});

  Color pressedColor() {
    if (pressed) {
      return Colors.lightGreen.shade900;
    } else {
      return Colors.white;
    }
  }
}
