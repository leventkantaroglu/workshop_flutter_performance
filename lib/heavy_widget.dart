// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HeavyWidget extends StatefulWidget {
  const HeavyWidget({super.key});

  @override
  State<HeavyWidget> createState() => _HeavyWidgetState();
}

class _HeavyWidgetState extends State<HeavyWidget> {
  Stopwatch stopwatch = Stopwatch();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // A heavy task here
    for (var i = 0; i < 1000000000; i++) {
      counter += 1;
    }

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
      child: const Text('Heavy Widget'),
    );
  }
}
