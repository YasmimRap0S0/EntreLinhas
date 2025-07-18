import 'package:flutter/material.dart';
import 'package:entrelinhas/paginas/boas_vindas.dart';
import 'package:entrelinhas/paginas/home.dart';
import 'package:entrelinhas/paginas/cadastro.dart';
import 'package:entrelinhas/paginas/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrelinhas App',
      initialRoute: '/',
      routes: {
        '/': (context) => const BoasVindas(),
        '/cadastro': (context) => const Cadastro(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
      },
    );
  }
}
