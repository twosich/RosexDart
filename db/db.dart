import 'package:mongo_dart/mongo_dart.dart';

void main() async {
  var db = Db(
      "mongodb://mongo:HGNLpuVEFPGCWtrQDJmjcWLEzUUzeASD@mongodb.railway.internal:27017");
  await db.open();

  await db.close();
}

Future<void> createRox(Db db, Map<String, dynamic> rox) async {
  final collection = db.collection('Rox');
  await collection.insertOne(rox);
}
