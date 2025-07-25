import 'package:flutter/material.dart';
import 'dart:async';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  Color buttonColor = const Color(0xFF5C54A5); // Roxo inicial

  bool emailValido(String email) {
    final padraoEmail = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return padraoEmail.hasMatch(email);
  }

  void piscarBotao() {
    String email = emailController.text.trim();
    String senha = senhaController.text;

    if (email.isEmpty || senha.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha todos os campos.')),
      );
      return;
    }

    if (!emailValido(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('E-mail inválido.')),
      );
      return;
    }

    setState(() {
      buttonColor = const Color(0xFFFFA500); // Laranja
    });

    Timer(const Duration(milliseconds: 800), () {
      setState(() {
        buttonColor = const Color(0xFF5C54A5); // Volta ao roxo
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuário autenticado com sucesso!')),
      );

      final username = email.split('@')[0];
      // Navega para '/home', substituindo a tela atual, e passa o username como argumento
      Navigator.pushReplacementNamed(context, '/home', arguments: username);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 222,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bloco-roxo-customizado.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4958AF),
                ),
              ),
              const SizedBox(height: 49),
              Container(
                width: 274,
                margin: const EdgeInsets.only(bottom: 25),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: const TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 12,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFD7D7D7),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Container(
                width: 274,
                child: TextField(
                  controller: senhaController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    hintStyle: const TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 12,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFD5D5D5),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(bottom: 60),
                child: const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8790AF),
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    padding: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: piscarBotao,
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                child: const Text(
                  'Não tem uma conta? Registre-se',
                  style: TextStyle(fontSize: 14, color: Color(0xFF5C54A5)),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
