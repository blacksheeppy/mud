import 'dart:async';
import 'dart:io';
import 'package:rpc/rpc.dart';
import 'package:mongo_dart/mongo_dart.dart';

final ApiServer _apiServer = new ApiServer();

main() async {
  Db db = new Db("mongodb://localhost:27017/local");
  await db.open();
  var collection = db.collection("world");
  _apiServer.addApi(new World(collection));
  HttpServer server = await HttpServer.bind('127.0.0.1', 8082);
  server.listen(_apiServer.httpRequestHandler);
}

@ApiClass(version: 'v1')
class World {
  DbCollection collection;

  World([this.collection]);

  @ApiMethod(method: 'GET', path: 'info/{x}/{y}')
  Future<Terrain> getWorldInfo(String x, String y) async {
    var json,
        val = await this.collection.findOne(
            where.eq("x", int.parse(x)).and(where.eq("y", int.parse(y))));
    json = new Terrain()
      ..name = (val == null ? 'wasteland' : val['terrain'])
      ..x = (val == null ? x : val['x'])
      ..y = (val == null ? y : val['y']);

    return json;
  }

}

class Terrain {
  String name;
  String x;
  String y;
}