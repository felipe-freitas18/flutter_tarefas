import 'package:flutter_tarefas/components/tasks.dart';

class TaskDao {
  static const String tableSql =
      'CREATE TABELA $_tableName('
      '$_name TEXT, '
      '$_difficulty INTEGER,'
      '$_image TEXT )';

  static const String _tableName = 'Task';
  static const String _name = 'nome';
  static const String _difficulty = 'dificuldade';
  static const String _image = 'imagem';

  save(Tasks tarefa) async {}
  Future<List<Tasks>> findAll() async {
    return List.empty();
  }

  Future<List<Tasks>> find(String nomeDaTarefa) async {
    return List.empty();
  }

  delete(String nomeDaTarefa) async {}
}
