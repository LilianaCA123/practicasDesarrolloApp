void main() {
  // Definir el inventario de la tienda "Supermercado El Buen Gusto"
  final Map<String, double> inventory = {
    "Manzanas": 10.5,
    "Naranjas": 8.0,
    "Plátanos": 12.0,
    "Leche": 25.5,
    "Huevos": 18.0,
    "Pan": 5.0,
    "Queso": 40.0,
    "Yogurt": 15.0,
  };

  final Map<String, int> stock = {
    "Manzanas": 20,
    "Naranjas": 30,
    "Plátanos": 15,
    "Leche": 50,
    "Huevos": 100,
    "Pan": 35,
    "Queso": 10,
    "Yogurt": 25,
  };

  // Imprimir el inventario en la consola
  print('Inventario de Supermercado El Buen Gusto:');
  for (var product in inventory.keys) {
    double price = inventory[product]!;
    int quantity = stock[product]!;
    print('Producto: $product | Precio: \$$price | Cantidad: $quantity');
  }
}
