import 'package:appmotos/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'Agencia de Motos',
      theme: ThemeData.dark(),
      home: const HomeMotos(),
      debugShowCheckedModeBanner: false,
    );
  }
}


