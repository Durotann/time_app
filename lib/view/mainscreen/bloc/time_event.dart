part of 'time_bloc.dart';

@immutable
sealed class TimeEvent {}

class TimeApiLoad extends TimeEvent {}

class TimeLoading extends TimeEvent {}
