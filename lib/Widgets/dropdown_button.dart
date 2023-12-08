import 'package:flutter/material.dart';

class CustomDropdownButtonWidget extends StatefulWidget {
  const CustomDropdownButtonWidget({super.key});

  @override
  State<CustomDropdownButtonWidget> createState() =>
      _CustomDropdownButtonWidgetState();
}

class _CustomDropdownButtonWidgetState
    extends State<CustomDropdownButtonWidget> {
  String text1 = 'سبحان الله';
  String text2 = 'الحمدالله';
  String text3 = 'الله اكبر';

  String currentValu = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton'),
      ),
      body: Center(
        child: DropdownButton(
          icon: const Icon(Icons.more_vert_outlined),
          borderRadius: BorderRadius.zero,
          underline: const Center(),
          value: currentValu,
          items: [
            DropdownMenuItem(
              value: text1,
              child: Text(text1),
            ),
            DropdownMenuItem(
              value: text2,
              child: Text(text2),
            ),
            DropdownMenuItem(
              value: text3,
              child: Text(text3),
            ),
          ],
          onChanged: (value) {
            setState(() {
              currentValu = value!;
            });
          },
        ),
      ),
    );
  }
}
