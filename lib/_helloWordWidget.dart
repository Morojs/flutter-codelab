import 'package:flutter/material.dart';

class HelloWordWidget extends StatelessWidget {
  const HelloWordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello , World!", textDirection: TextDirection.ltr),
    );
  }
}
