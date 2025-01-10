import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_navigationbar_31/cubit/navindex_cubit.dart';
import 'package:flutter_navigationbar_31/home_screen.dart';
import 'package:flutter_navigationbar_31/messages_screen.dart';
import 'package:flutter_navigationbar_31/notifications_screen.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    //final navindexCubit = context.watch<NavindexCubit>();

    return NavigationBar(
        onDestinationSelected: (int index) {

          context.read<NavindexCubit>().setIndex(index);
          currentPageIndex = context.read<NavindexCubit>().state;

          if (index == 0) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (index == 1) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationsScreen()));
          } else if (index == 2) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MessagesScreen()));
          }  
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      );
  }
}