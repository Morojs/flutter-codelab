import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({required this.title, super.key});
  // Always the fields in sub-classes marked as final
  final Widget title;
  @override
  Widget build(BuildContext context) {
    // Container The Container widget lets you create a rectangular visual element.
    // A container can be decorated with a BoxDecoration, such as a background, a border,
    // or a shadow. A Container can also have margins, padding, and constraints applied to its size. In addition,
    // a Container can be transformed in three dimensional space using a matrix.

    // Row, Column
    // These flex widgets let you create flexible layouts in both the horizontal (Row) and vertical (Column) directions.
    // The design of these objects is based on the web’s flexbox layout model.

    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal , linear layout
      child: Row(
        children: [
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              tooltip: 'App Bar Title'),
          Expanded(child: title),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which UI appears
    return Material(
      child: Column(children: [
        AppBar(
            title: Text(
          'Text Title Example',
          style: Theme.of(context).primaryTextTheme.headline6,
        )),
        const Expanded(
            child: Center(
          child: Text('Hello, World'),
        ))
      ]),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'Get Started Application',
    home: SafeArea(child: MyScaffold()),
  ));
}
