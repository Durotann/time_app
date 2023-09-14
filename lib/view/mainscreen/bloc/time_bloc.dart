import 'package:alibek_lef/data/repository/time_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../data/repository/local_time_repository.dart';
import '../../../domain/model/time_model.dart';

part 'time_event.dart';
part 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  TimeBloc(
    this.repository,
  ) : super(TimeInitial()) {
    on<TimeEvent>(_onTimeLoad);
  }

  final ValueNotifier<TimeRepository> repository;

  _onTimeLoad(TimeEvent event, Emitter<TimeState> emit) async {
    emit(TimeLoad());
    final result =
        await repository.value.getCurrentTime().timeout(Duration(seconds: 5));
    emit(TimeLoaded(data: result));
  }
}
