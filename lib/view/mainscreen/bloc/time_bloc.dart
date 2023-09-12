import 'package:alibek_lef/domain/model/time_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repository/repository.dart';

part 'time_event.dart';
part 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  TimeBloc(this.repository) : super(TimeInitial()) {
    on<TimeEvent>(_onTimeLoad);
  }
  final Repository repository;
  _onTimeLoad(TimeEvent event, Emitter<TimeState> emit) async {
    try {
      emit(TimeLoad());
      final result = await repository.getData();
      emit(TimeLoaded(data: result));
    } catch (e) {
      print(e);
    }
  }
}
