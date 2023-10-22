import 'package:flutter/material.dart';

import '../widget/ph_dropdown.dart';

class DevPHManual extends StatelessWidget {
  const DevPHManual({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Adauga PH-ul manual'),
          const SizedBox(height: 50),
          DropdownItem(),
        ],
      )),
    );
  }
}
