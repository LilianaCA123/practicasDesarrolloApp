import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String storeName = "Tienda de Juve";

    return MaterialApp(
      title: storeName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(title: storeName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, double> inventory = {
    "Manzanas": 1.5,
    "Plátanos": 0.75,
    "Naranjas": 1.21,
    "Peras": 1.98,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Inventario de productos:'),

            for (var entry in inventory.entries)
              Text('${entry.key}: \$${entry.value.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
