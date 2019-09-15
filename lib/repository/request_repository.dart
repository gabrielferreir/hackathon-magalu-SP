import 'package:hackathonmagalusp/helpers/database.dart';
import 'package:hackathonmagalusp/models/product_model.dart';

class RequestRepository {
  save(String name, int points, String image) async {
    final database = await MyDatabase().db;
    int negativeValue = 0 - points;
    await database.execute(
        "INSERT OR REPLACE INTO request (name, points, image) VALUES ('$name', $negativeValue, '$image')");
  }

  Future<List> get() async {
    final database = await MyDatabase().db;
    final mapRequest = await database.rawQuery("select * FROM request");
//    final listRequest =
    final list = mapRequest.map((item) => ProductModel.fromMap(item)).toList();

    print(list);

    return list;
  }
}
