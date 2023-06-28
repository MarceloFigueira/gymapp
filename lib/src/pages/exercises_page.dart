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
      backgroundColor: Colors.blue,
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
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tirar foto"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Como fazer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              exerciseModel.howToMake,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Text(
              "Como estou me sentindo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listFeeling.length, (index) {
                FeelingModel feelingNow = listFeeling[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(feelingNow.feeling),
                  subtitle: Text(feelingNow.date),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                    onPressed: () {
                      print("DELETAR ${feelingNow.feeling}");
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
