import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 360,
        height: 800,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 360,
              height: 45,
              decoration: BoxDecoration(color: const Color(0xFF6049AF)),
            ),
          ),
          Positioned(
            left: 9,
            top: 11.35,
            child: SizedBox(
              width: 160,
              height: 19.51,
              child: Text(
                'ENTRELINHAS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              'PÁGINA EM CONSTRUÇÃO',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    ]);
  }
}
