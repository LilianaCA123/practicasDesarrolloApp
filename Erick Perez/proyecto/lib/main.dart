import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Tienda',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Tienda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Playera: Precio: \$20.00 | Cantidad: 30'),
            Text('Pantalon: Precio: \$80.00 | Cantidad: 20'),
            Text('Camisa: Precio: \$70.00 | Cantidad: 10'),
            Text('Tenis: Precio: \$120.00 | Cantidad: 70'),
          ],
        ),
      ),
    );
  }
}