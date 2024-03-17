import 'package:flutter/material.dart';
import 'package:project_3/telegram_copy_app_sceen.dart';

void main() {
  runApp(const TelegramCopyApp());
}

class TelegramCopyApp extends StatelessWidget {
  const TelegramCopyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Color(0xff242C1F),
      debugShowCheckedModeBanner: false,
      home: TelegramCopyAppScreen(),
    );
  }
}