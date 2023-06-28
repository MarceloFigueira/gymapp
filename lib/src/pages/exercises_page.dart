import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercicio de braços 1"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("botao clicado");
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Enviar foto"),
            ),
            const Text(
              "Como fazer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              "Aqui eu explico como fazer o exercicio de braços",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Divider(),
            const Text(
              "Como estou me sentindo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              "Sentindo meus bracos doendo muito",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
