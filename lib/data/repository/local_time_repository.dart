import 'package:alibek_lef/data/repository/time_repository.dart';

class LocalTimeRepository implements TimeRepository {
  @override
  Future<String> getCurrentTime() async => DateTime.now().toString();
}
