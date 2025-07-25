import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String username;
  const Home({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              color: const Color(0xFF6049AF),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: const Text(
                'ENTRELINHAS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 36),
                const CircleAvatar(
                  radius: 37.5,
                  backgroundColor: Color(0xFFC3B8E0),
                  child: Icon(Icons.person, size: 48, color: Colors.white),
                ),
                const SizedBox(width: 20),
                Text(
                  '@$username',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  child: const Text('Sair'),
                ),
                const SizedBox(width: 36),
              ],
            ),
            const SizedBox(height: 40),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                _statsCard('Livros lidos', '0 livro(s)', Color(0xFFC3B8E0)),
                _statsCard('Dias de leitura', '0 dia(s)', Color(0xFF4958AF)),
                _statsCard('Páginas lidas', '0 páginas(s)', Color(0xFF8FAF49)),
                _statsCard(
                    'Avaliações', 'Nenhuma avaliação', Color(0xFFAE7D93)),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'PÁGINA EM CONSTRUÇÃO',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statsCard(String title, String subtitle, Color bgColor) {
    return Container(
      width: 135,
      height: 209,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
