import 'package:flutter/material.dart';
import 'package:flutter_tarefas/components/tasks.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({Key? key, required Widget child})
    : super(key: key, child: child);

  final List<Tasks> taskList = [
    Tasks('Estudar Flutter', 'assets/images/flutter.png', 3),
    Tasks('Andar de Bike', 'assets/images/bike.webp', 2),
    Tasks('Ler 50 páginas', 'assets/images/ler.jpg', 1),
    Tasks('Meditar', 'assets/images/meditar.jpeg', 4),
    Tasks('Jogar', 'assets/images/jogar.jpg', 1),
  ];

  void newTask(String nome, String foto, int dificuldade) {
    taskList.add(Tasks(nome, foto, dificuldade));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
