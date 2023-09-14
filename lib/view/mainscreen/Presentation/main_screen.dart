import 'package:alibek_lef/data/repository/api_time_repository.dart';
import 'package:alibek_lef/data/repository/time_repository.dart';
import 'package:alibek_lef/data/repository/local_time_repository.dart';
import 'package:alibek_lef/main.dart';
import 'package:alibek_lef/view/mainscreen/bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    context.read<TimeBloc>().add(TimeLoading());
    super.initState();
  }

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeBloc, TimeState>(
      builder: (context, state) {
        if (state is TimeLoad) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (state is TimeLoaded) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(flag.toString()),
                  Text(
                    "${state.data}}",
                    style: TextStyle(fontSize: 15),
                  ),
                  MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      if (flag) {
                        flag = false;
                        setState(() {});
                        notifier.value = LocalTimeRepository();
                        notifier.notifyListeners();
                        context.read<TimeBloc>().add(TimeLoading());
                      } else {
                        flag = true;
                        setState(() {});
                        notifier.value = ApiTimeRepository();
                        notifier.notifyListeners();
                        context.read<TimeBloc>().add(TimeLoading());
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        }

        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
