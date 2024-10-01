import 'package:flutter/material.dart';

// Punto de entrada de la aplicación.
void main() {
  runApp(const MyApp());
}

// Clase que representa la aplicación principal.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Construye el MaterialApp con un título y tema.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Tienda',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// Clase que representa la página principal de la tienda.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Definir el nombre de la tienda como una constante.
    const String tiendaNombre = "Mi Tienda";

    // Usar variables para gestionar la información del inventario y las cantidades.
    Map<String, double> inventario = {
      "Manzanas": 1.50,
      "Plátanos": 0.75,
      "Naranjas": 1.00,
      "Fresas": 2.00,
    };

    Map<String, int> cantidades = {
      "Manzanas": 100,
      "Plátanos": 150,
      "Naranjas": 80,
      "Fresas": 50,
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(tiendaNombre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Inventario completo:',
            ),

            // Mapea cada producto en el inventario para mostrar su información.
            ...inventario.keys.map((producto) {
              double precio = inventario[producto]!;
              int cantidad = cantidades[producto]!;
              return Text(
                '$producto: Precio: \$${precio.toStringAsFixed(2)} | Cantidad: $cantidad',
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}


