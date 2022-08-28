import 'package:flutter/material.dart';

String _dropDownValue = 'Pending';

class StatusDropdown extends StatefulWidget {
  const StatusDropdown({super.key});

  @override
  State<StatusDropdown> createState() => _StatusDropdownState();
}

class _StatusDropdownState extends State<StatusDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(
        _dropDownValue,
        style: TextStyle(color: _dropDownValue == "Completed" ? Colors.green : Colors.red),
      ),
      isExpanded: true,
      iconSize: 30.0,
      items: ['Pending', 'Completed'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropDownValue = val!;
          },
        );
      },
    );
  }
}