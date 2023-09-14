import 'package:alibek_lef/data/repository/local_time_repository.dart';
import 'package:alibek_lef/data/repository/time_repository.dart';
import 'package:alibek_lef/data/repository/api_time_repository.dart';
import 'package:alibek_lef/view/mainscreen/Presentation/main_screen.dart';
import 'package:alibek_lef/view/mainscreen/bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

final ValueNotifier<TimeRepository> notifier =
    ValueNotifier(LocalTimeRepository());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (context, snapshot, _) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => TimeBloc(notifier),
                ),
              ],
              child: MaterialApp(
                home: Scaffold(body: MainScreen()),
              ));
        });
  }
}
