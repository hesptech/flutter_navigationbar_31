import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigationbar_31/cubit/navindex_cubit.dart';

import 'custom_bottom_navigation.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('messages appbar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            const Text('messages'),
            const Spacer(),
            BlocBuilder<NavindexCubit, int>(
                    builder: (context, state) {
                      return Center(
                        child: Text(state.toString()),
                      );
                    },
                  ),
            const Spacer(),
          ],
        ),
      ),

      bottomNavigationBar: const CustomBottomNavigation(),
    );


    /* return const Center(
        child: Text('messages without scaffold'),
    ); */
  }
}