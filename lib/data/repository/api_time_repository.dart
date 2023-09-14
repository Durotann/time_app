import 'package:alibek_lef/data/repository/time_repository.dart';
import 'package:alibek_lef/domain/model/time_model.dart';
import 'package:dio/dio.dart';

import 'local_time_repository.dart';

class ApiTimeRepository implements TimeRepository {
  final Dio dio = Dio();

  @override
  Future<String> getCurrentTime() async {
    Response response =
        await dio.get("http://worldtimeapi.org/api/timezone/Europe/Moscow");

    final result = Data.fromJson(response.data);

    return result.utc_datetime;
  }
}
