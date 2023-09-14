// Интерфейс можно представить как договор, он говорит что у нас должно быть в
// наследуемых классах, но сам никакой логики не содержит
abstract interface class TimeRepository {
  Future<String> getCurrentTime();
}

// Future<Data> getData() async {
//     Response response =
//         await dio.get("http://worldtimeapi.org/api/timezone/Europe/Moscow");

//     var body = response.data['utc_datetime'];
//     print(body);
//     return Data.fromJson(body);
//   }
