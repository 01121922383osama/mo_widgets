import 'package:flutter/material.dart';

class WidgetRadioButtonPage extends StatefulWidget {
  const WidgetRadioButtonPage({super.key});

  @override
  State<WidgetRadioButtonPage> createState() => _WidgetRadioButtonPageState();
}

class _WidgetRadioButtonPageState extends State<WidgetRadioButtonPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: Center(
        child: Radio(
          groupValue: '',
          onChanged: (value) {},
          value: true,
        ),
      ),
    );
  }
}
