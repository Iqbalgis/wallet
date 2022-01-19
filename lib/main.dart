import 'package:ewalllet/pages/components/service_menu.dart';
import 'package:ewalllet/pages/ui/home_page.dart';
import 'package:ewalllet/pages/ui/security_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: ServiceMenu(),
    );
  }
}
