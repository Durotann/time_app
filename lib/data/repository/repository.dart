import 'package:alibek_lef/domain/model/time_model.dart';
import 'package:dio/dio.dart';

class Repository {
  final dio = Dio();
  Future<Data> getData() async {
    Response response =
        await dio.get("http://worldtimeapi.org/api/timezone/Europe/Moscow");

    var body = response.data;
    return Data.fromJson(body);
  }
}
