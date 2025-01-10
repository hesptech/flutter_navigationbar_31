import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigationbar_31/cubit/navindex_cubit.dart';

import 'custom_bottom_navigation.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('notifictions appbar'),
        centerTitle: true,
      ),
      body: BlocBuilder<NavindexCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(state.toString()),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
