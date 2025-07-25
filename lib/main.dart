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
      title: 'Entrelinhas',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const BoasVindas(),
        '/login': (context) => const Login(),
        '/cadastro': (context) => const Cadastro(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          final username = settings.arguments as String; //recupera o argumento
          // Retorna a página Home, passando o username para o construtor
          return MaterialPageRoute(
            builder: (context) => Home(username: username),
          );
        }
        return null;
      },
    );
  }
}
