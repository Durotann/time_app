import 'package:alibek_lef/data/repository/repository.dart';
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
  final currentTime = DateTime.now();
  void initState() {
    context.read<TimeBloc>().add(TimeLoading());
    super.initState();
  }

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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("API TIME:"),
                Text(
                  "${state.data.utc_datetime}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Phone time:"),
                Text("${currentTime}")
              ],
            ),
          );
        }
        ;
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
