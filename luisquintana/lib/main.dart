void main() {
  // Definir el inventario de la tienda
  final Map<String, double> inventory = {
    "Manzanas": 10.5,
    "Naranjas": 8.0,
    "Plátanos": 12.0,
  };

  final Map<String, int> stock = {
    "Manzanas": 20,
    "Naranjas": 30,
    "Plátanos": 15,
  };

  // Imprimir el inventario en la consola
  print('Inventario de Productos:');
  for (var product in inventory.keys) {
    double price = inventory[product]!;
    int quantity = stock[product]!;
    print('Producto: $product | Precio: \$$price | Cantidad: $quantity');
  }
}
