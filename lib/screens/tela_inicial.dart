import 'package:flutter/material.dart';
import 'package:flutter_tarefas/components/tasks.dart';
import 'package:flutter_tarefas/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Primeiros Passos'),
        leading: const Icon(Icons.add_task),
      ),
      body: Container(
        color: const Color.fromARGB(255, 208, 221, 237),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Tasks('Estudar Flutter', 'assets/images/flutter.png', 3),
            ),
            Tasks('Andar de Bike', 'assets/images/bike.webp', 2),
            Tasks('Ler 50 páginas', 'assets/images/ler.jpg', 1),
            Tasks('Meditar', 'assets/images/meditar.jpeg', 4),
            Tasks('Jogar', 'assets/images/jogar.jpg', 0),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormScreen()),
          );
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.add),
      ),
    );
  }
}
