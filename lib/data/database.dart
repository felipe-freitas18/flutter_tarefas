import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDataBase() async {
  final String path = join(await getDatabasesPath(), 'task.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(tableSql);
    },
    version: 1,
  );
}

const String tableSql =
    'CREATE TABELA $_tableName('
    '$_name TEXT, '
    '$_difficulty INTEGER,'
    '$_image TEXT )';

const String _tableName = 'Task';
const String _name = 'nome';
const String _difficulty = 'dificuldade';
const String _image = 'imagem';
