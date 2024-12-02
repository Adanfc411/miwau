import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  Productos({super.key});

  final List<Map<String, String>> productos = [
    {'nombre': 'Comida para perros', 'precio': '15,000'},
    {'nombre': 'Arena para gatos', 'precio': '10,000'},
    {'nombre': 'Juguete para mascotas', 'precio': '5,500'},
    {'nombre': 'Snacks para perros', 'precio': '7,000'},
    {'nombre': 'Casita para gatos', 'precio': '20,000'},
    {'nombre': 'Correa para perros', 'precio': '8,500'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos para Mascotas')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 3 / 4, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
        ),
        itemCount: productos.length, 
        itemBuilder: (ctx, i) {
          final producto = productos[i];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    producto['nombre']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${producto['precio']} CLP',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/compra');
                    },
                    child: const Text('Comprar'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
