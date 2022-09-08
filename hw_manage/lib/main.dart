// Main Program File
import 'package:flutter/material.dart';

// Theme
import 'package:hw_manage/themes/cyan.dart';

// Plug
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

// Pages
import 'package:hw_manage/pages/home_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  MyApp() {
    print('Started');
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      // Setting Routes Table and Initial Route
      initialRoute: '/',
      routes: {'': (context) => HomePage()},
      title: 'Card',
      theme: ThemeCyan,
      darkTheme: ThemeCyan,
      themeMode: ThemeMode.dark,
      home: HomePage(),
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
    );
  }
}
