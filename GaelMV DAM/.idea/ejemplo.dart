void main() {
  const String storeName = "Tienda";

  Map<String, double> inventario = {
    'Manzanas': 1.50,
    'Plátanos': 0.80,
    'Leche': 1.20,
    'Pan': 2.00,
  };

  print("Inventario de $storeName:");
  inventario.forEach((producto, precio) {
    print("$producto: \$${precio.toStringAsFixed(2)}");
  });
}
