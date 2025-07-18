import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Imagem no topo
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
                'Registre-se',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4958AF),
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 49),

              // Campo Usuário
              Container(
                width: 274,
                margin: const EdgeInsets.only(bottom: 25),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Usuário',
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

              // Campo Email
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
                margin: const EdgeInsets.only(bottom: 60),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8790AF),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),

              // Botão Cadastrar
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5C54A5),
                    padding: const EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Redireciona para a tela de Login
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Texto final
              const Text(
                'Já tem uma conta? Faça login',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5C54A5),
                  backgroundColor: Colors.white,
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
