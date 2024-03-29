import 'package:flutter/material.dart';

class MyDropdownMenu extends StatefulWidget {
  const MyDropdownMenu({super.key});
  @override
  _MyDropdownMenuState createState() => _MyDropdownMenuState();
}

class _MyDropdownMenuState extends State<MyDropdownMenu> {
  String? _selectedItem = 'Dart'; 

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: SizedBox(
          child: DropdownButton<String>(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            value: _selectedItem,
            onChanged: (String? newValue) { 
              setState(() {
                _selectedItem = newValue;
              });
            },
            items: <String>['Dart', 'C++', 'Java']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
    );
  }
}

