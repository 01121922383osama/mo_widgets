import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushbarPage extends StatelessWidget {
  const FlushbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flushbar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Flushbar(
                  message:
                      "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد",
                  icon: Icon(
                    Icons.info_outline,
                    size: 28.0,
                    color: Colors.blue[300],
                  ),
                  margin: const EdgeInsets.all(6.0),
                  flushbarStyle: FlushbarStyle.FLOATING,
                  flushbarPosition: FlushbarPosition.TOP,
                  textDirection: Directionality.of(context),
                  borderRadius: BorderRadius.circular(12),
                  duration: const Duration(seconds: 3),
                  leftBarIndicatorColor: Colors.blue[300],
                ).show(context);
              },
              child: const Text('Show Flushbar'),
            ),
          ],
        ),
      ),
    );
  }
}
