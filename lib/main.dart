import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // IMAGEN DE FONDO
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/palmera.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // CONTEN
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.wb_sunny, size: 50, color: Colors.white),
                  const SizedBox(height: 10),
                  const Text(
                    '31°',
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "LeagueSpartan.ttf",
                    ),
                  ),
                  const Text(
                    'now',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "LeagueSpartan.ttf",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Grab sunglasses',
                    style: TextStyle(
                      fontFamily: "LeagueSpartan.ttf",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 32, 16, 168),
                    ),
                  ),
                  const Text(
                    'It’s super shiny in Barcelona',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 221, 6, 6),
                      fontFamily: "LeagueSpartan.ttf",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 31, 157, 230),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Color.fromARGB(255, 218, 241, 9),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '07h 12min before sunset',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "LeagueSpartan",
                            color: Color.fromARGB(255, 10, 10, 10),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
