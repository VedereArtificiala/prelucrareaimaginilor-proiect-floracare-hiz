import 'package:flutter/material.dart';

import 'pages/adauga_ph_manual.dart';
import 'pages/chestionar.dart';
import 'pages/plant_recogniser.dart';
import 'styles.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: kColorRoz,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Formular',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'PH photo',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'PH manual',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: 'Rezultat',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const MyApp()
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const PlantRecogniser(),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const DevPHManual(),
        ),
        Container(
          color: kColorRoz,
          alignment: Alignment.center,
          child: const Text('Rezultat'),
        ),
      ][currentPageIndex],
    );
  }
}
