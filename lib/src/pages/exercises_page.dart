import 'package:flutter/material.dart';
import 'package:gymapp/src/models/exercises_model.dart';
import 'package:gymapp/src/models/feeling_model.dart';

class ExercisesPage extends StatelessWidget {
  ExercisesPage({super.key});

  final ExerciseModel exerciseModel = ExerciseModel(
    id: "001",
    name: "Remada supinada",
    training: "Treino básico",
    howToMake: "segura e puxa a barra",
  );

  final List<FeelingModel> listFeeling = [
    FeelingModel(
      id: "001",
      feeling: "Pouco motivado hoje",
      date: "2023-06-22",
    ),
    FeelingModel(
      id: "002",
      feeling: "Um pouco mais motivado",
      date: "2023-06-27",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${exerciseModel.name} / ${exerciseModel.training}"),
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
        child: ListView(
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
            Text(
              exerciseModel.howToMake,
              style: const TextStyle(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listFeeling.length, (index) {
                FeelingModel feelingNow = listFeeling[index];
                return Text(feelingNow.feeling);
              }),
            )
          ],
        ),
      ),
    );
  }
}
