import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get dropdownItems {
  final menuItems = [
    const DropdownMenuItem<String>(
      key: Key('3.5'),
      value: '3.5',
      child: Text('PH 3.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('4.0'),
      value: '4.0',
      child: Text('PH 4.0'),
    ),
    const DropdownMenuItem<String>(
      key: Key('4.5'),
      value: '4.5',
      child: Text('PH 4.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('5.0'),
      value: '5.0',
      child: Text('PH 5.0'),
    ),
    const DropdownMenuItem<String>(
      key: Key('5.5'),
      value: '5.5',
      child: Text('PH 5.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('6.0'),
      value: '6.0',
      child: Text('PH 6.0'),
    ),
    const DropdownMenuItem<String>(
      key: Key('6.5'),
      value: '6.5',
      child: Text('PH 6.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('7.0'),
      value: '7.0',
      child: Text('PH 7.0'),
    ),
    const DropdownMenuItem<String>(
      key: Key('7.5'),
      value: '7.5',
      child: Text('PH 7.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('8.0'),
      value: '8.0',
      child: Text('PH 8.0'),
    ),
    const DropdownMenuItem<String>(
      key: Key('8.5'),
      value: '8.5',
      child: Text('PH 8.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('9.0'),
      value: '9.0',
      child: Text('PH 9.0'),
    ),
    const DropdownMenuItem<String>(
      key: Key('9.5'),
      value: '9.5',
      child: Text('PH 9.5'),
    ),
    const DropdownMenuItem<String>(
      key: Key('10.0'),
      value: '10.0',
      child: Text('PH 10.0'),
    ),
  ];

  return menuItems;
}

class DropdownItem extends StatefulWidget {
  @override
  _DropdownItemState createState() => _DropdownItemState();
}

class _DropdownItemState extends State<DropdownItem> {
  String? selectedValue;
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _dropdownFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButtonFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.blueAccent,
            ),
            validator: (value) => value == null ? 'Select a country' : null,
            dropdownColor: Colors.blueAccent,
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems,
          ),
          ElevatedButton(
            onPressed: () {
              if (_dropdownFormKey.currentState!.validate()) {
                // Valid flow
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
