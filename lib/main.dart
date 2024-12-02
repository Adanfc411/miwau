import 'package:flutter/material.dart';
import 'screens/Bienvenidamiwau.dart';
import 'screens/login.dart';
import 'screens/productosmiwau.dart';
import 'screens/compra.dart';
import 'screens/Confirmacion.dart';

void main() {
  runApp(MiwauApp());
}

class MiwauApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Miwau App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => Bienvenida(),
        '/login': (context) => Login(),
        '/productos': (context) => Productos(),
        '/compra': (context) => Compra(),
        '/confirmacion': (context) => Confirmacion(),
      },
    );
  }
}
