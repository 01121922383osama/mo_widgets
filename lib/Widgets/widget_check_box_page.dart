import 'package:flutter/material.dart';

class WidgetCheckBoxPage extends StatefulWidget {
  const WidgetCheckBoxPage({super.key});

  @override
  State<WidgetCheckBoxPage> createState() => _WidgetCheckBoxPageState();
}

class _WidgetCheckBoxPageState extends State<WidgetCheckBoxPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('CheckBox'),
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
