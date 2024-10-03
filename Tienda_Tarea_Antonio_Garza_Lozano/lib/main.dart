import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Definir constante para el nombre de la tienda
  static const String nombreTienda = 'Tienda de Abarrotes "El Toño"';

  @override
  Widget build(BuildContext context) {
    List<String> productos = ['Chocolates', 'Galletas', 'Cereales'];
    List<double> precios = [15.0, 12.0, 30.0];
    List<int> cantidades = [20, 15, 30];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(nombreTienda),
        ),
        body: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${productos[index]} - \$${precios[index]}'),
              subtitle: Text('Cantidad en inventario: ${cantidades[index]}'),
            );
          },
        ),
      ),
    );
  }
}
