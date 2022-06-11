

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}



static Database _database;
Future<Database> get database async {
  if (_database != null)
    return _database;

  // if _database is null we instantiate it
  _database = await initDB();
  return _database;
}


initDB() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, "TestDB.db");
  return await openDatabase(path, version: 1, onOpen: (db) {
  }, onCreate: (Database db, int version) async {
    await db.execute("CREATE TABLE Client ("
        "id INTEGER PRIMARY KEY,"
        "name TEXT,"
        ")");
  });
}