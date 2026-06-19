import 'package:flutter/material.dart';
import 'pages/catalog_page.dart';

void main() {
  runApp(const ModernKatalogApp());
}

class ModernKatalogApp extends StatelessWidget {
  const ModernKatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Katalog - Modernite',
      theme: ThemeData(
        // Nolan Efe: Dandy/Soft estetik için temiz bir temel
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade900),
        useMaterial3: true,
      ),
      home: const CatalogPage(),
    );
  }
}