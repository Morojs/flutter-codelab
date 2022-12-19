// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '_stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Build method descibes how to display the widget on the screen based on sub widgets and the class parent itself cause in flutter everything is a widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

/*
This example creates a Material app. Material is a visual design language that is standard on mobile and the web. Flutter offers a rich set of Material widgets. It’s a good idea to have a uses-material-design: true entry in the flutter section of your pubspec.yaml file. This allows you to use more features of Material, such as its set of predefined Icons.
The app extends StatelessWidget, which makes the app itself a widget. In Flutter, almost everything is a widget, including alignment, padding, and layout.
The Scaffold widget, from the Material library, provides a default app bar, and a body property that holds the widget tree for the home screen. The widget subtree can be quite complex.
A widget’s main job is to provide a build() method that describes how to display the widget in terms of other, lower level widgets.
The body for this example consists of a Center widget containing a Text child widget. The Center widget aligns its widget subtree to the center of the screen.
*/
