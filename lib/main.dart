import 'package:flutter/material.dart';
import 'package:tes/ui/poli_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik App',
      debugShowCheckedModeBanner: false,
      home: PoliPage(),
    );
  }
}
