import 'package:flutter/material.dart';

class CheckboxAndSwitchExample extends StatefulWidget {
  const CheckboxAndSwitchExample({super.key});

  @override
  State<CheckboxAndSwitchExample> createState() =>
      _CheckboxAndSwitchExampleState();
}

class _CheckboxAndSwitchExampleState extends State<CheckboxAndSwitchExample> {
  bool isChecked = false;
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Switch(
            value: light,
            onChanged: (bool value) {
              setState(() {
                light = value;
              });
            },
          )
        ],
      ),
    );
  }
}
