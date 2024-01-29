import 'package:flutter/material.dart';

import 'package:workshop_flutter_performance/heavy_widget.dart';
import 'package:workshop_flutter_performance/light_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LightWidget(),
            HeavyWidget(),
          ],
        )),
      ),
    );
  }
}
