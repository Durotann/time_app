import 'package:alibek_lef/data/repository/repository.dart';
import 'package:alibek_lef/view/mainscreen/Presentation/main_screen.dart';
import 'package:alibek_lef/view/mainscreen/bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = Repository();
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TimeBloc(repository)),
        ],
        child: MaterialApp(
          home: Scaffold(body: MainScreen()),
        ));
  }
}
