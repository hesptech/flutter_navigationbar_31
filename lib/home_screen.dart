import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_navigationbar_31/cubit/navindex_cubit.dart';
import 'custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final navindexCubit = context.watch<NavindexCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('home appbar'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<NavindexCubit, int>(
          builder: (context, state) {
            return Text(state.toString());
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
