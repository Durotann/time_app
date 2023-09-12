// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'time_bloc.dart';

@immutable
sealed class TimeState {}

final class TimeInitial extends TimeState {}

class TimeLoad extends TimeState {}

class TimeLoaded extends TimeState {
  final Data data;
  TimeLoaded({
    required this.data,
  });
}
