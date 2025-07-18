import 'package:flutter/material.dart';
import 'dart:async';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color buttonColor = const Color(0xFF5C54A5); // Cor inicial do botão (roxo)

  void piscarBotao() {
    setState(() {
      buttonColor = const Color(0xFFFFA500); // Cor laranja ao clicar
    });

    Timer(const Duration(milliseconds: 800), () {
      setState(() {
        buttonColor = const Color(0xFF5C54A5); // Volta para cor original
      });

      // Exibe mensagem
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuário autenticado com sucesso!')),
      );
    });
    Future.delayed(const Duration(seconds: 2), () {
      //mais um delay
      Navigator.pushNamed(context, '/home');
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
              // Imagem roxa no topo
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

              // Título
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4958AF),
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 49),

              // Campo E-mail
              Container(
                width: 274,
                margin: const EdgeInsets.only(bottom: 25),
                child: TextField(
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

              // Campo Senha
              Container(
                width: 274,
                child: TextField(
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

              // Texto "Esqueceu sua senha?"
              Container(
                width: 200,
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(bottom: 60),
                child: const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8790AF),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),

              // Botão Entrar com efeito piscar
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
                  onPressed: () {
                    piscarBotao();
                    //  validação de campos, lógica
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Botão para ir para tela de cadastro
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                child: const Text(
                  'Não tem uma conta? Registre-se',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF5C54A5),
                  ),
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
