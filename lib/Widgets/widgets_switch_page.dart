import 'package:flutter/material.dart';

class WidgetsSwitchPage extends StatefulWidget {
  const WidgetsSwitchPage({super.key});

  @override
  State<WidgetsSwitchPage> createState() => _WidgetsSwitchPageState();
}

class _WidgetsSwitchPageState extends State<WidgetsSwitchPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Change Mode'),
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
