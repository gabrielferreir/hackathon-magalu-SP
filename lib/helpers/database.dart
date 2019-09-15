import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> get db async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'labss.db');

    // Para teste pode ser deletado o banco
    //    await deleteDatabase(path);

    final db = await openDatabase(path, version: 2, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    print('Criando DB');

    await db
        .execute('CREATE TABLE request (id INTEGER PRIMARY KEY AUTOINCREMENT, '
            'name TEXT, image TEXT, points INT)');

    await db.execute(
        "INSERT OR REPLACE INTO request (name, points, image) VALUES ('Redmi Note 7', 30, 'https://images-na.ssl-images-amazon.com/images/I/51TPT3xFMlL._SX679_.jpg')");

    await db.execute(
        "INSERT OR REPLACE INTO request (name, points, image) VALUES ('Notebook Lenovo Ideaped', 60, 'https://a-static.mlcdn.com.br/618x463/notebook-lenovo-ideapad-330-intel-core-i5-8gb-1tb-156-windows-10/magazineluiza/220970900/a34c43e78e779c70f644e84b0f76c17a.jpg')");
  }
}
