// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LightWidget extends StatefulWidget {
  const LightWidget({super.key});

  @override
  State<LightWidget> createState() => _LightWidgetState();
}

class _LightWidgetState extends State<LightWidget> {
  Stopwatch stopwatch = Stopwatch();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // There is no heavy task here

    stopwatch.stop();
    print(stopwatch.elapsedMicroseconds);
    return TextButton(
      onPressed: () {
        stopwatch.reset();
        stopwatch.start();
        setState(() {
          counter = counter + 1;
        });
      },
      child: const Text('Light Widget'),
    );
  }
}
