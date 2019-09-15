import 'package:hackathonmagalusp/helpers/database.dart';
import 'package:hackathonmagalusp/models/product_model.dart';

class RequestRepository {
  save() {}

  Future<List> get() async {
    final database = await MyDatabase().db;
    final mapRequest = await database.rawQuery("select * FROM request");
//    final listRequest =
    final list = mapRequest.map((item) => ProductModel.fromMap(item)).toList();

    print(list);

    return list;
  }
}
