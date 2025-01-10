import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigationbar_31/cubit/navindex_cubit.dart';
import 'package:flutter_navigationbar_31/home_screen.dart';

import 'bloc/counter_bloc.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()..add(CounterIncrementevent())),
        BlocProvider(create: (context) => NavindexCubit() ),

      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const HomeScreen(),
      ),
    );
  }
}



/* void main() {
  runApp(const MainApp());
}

class BlocProviders extends StatelessWidget {
  const BlocProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavindexCubit() ),
        BlocProvider(create: (context) => CounterBloc()..add(CounterIncrementevent()))

      ],
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
} */
