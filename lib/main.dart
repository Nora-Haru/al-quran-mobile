import 'package:al_quran_mobile/core/utils/theme_util.dart';
import 'package:al_quran_mobile/core/theme/app_theme.dart';
import 'package:al_quran_mobile/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Quicksand", "Amiri Quran");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Al-Quran Mobile',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: HomePage(),
    );
  }
}
