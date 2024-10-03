import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de Fer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Tienda de Fer'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  // nombre de la tienda
  static const String tiendaNombre = "Tienda de Fer";

  // variables de inventario
  final Map<String, double> inventario = {
    "Antorcha": 22.50,
    "Cuerda": 42.00,
    "Arco": 268.00,
    "Flechas (30pz)": 84.00,
    "Poción Magica": 75.50,
    "Espada de Titanio": 600.00,
    "Huevo de Dragon": 999.99,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tiendaNombre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Inventario de Productos:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ...inventario.entries.map((entry) {
              return Text(
                '${entry.key}: \$${entry.value.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
