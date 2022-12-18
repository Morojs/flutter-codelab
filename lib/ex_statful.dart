import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final pair = WordPair.random();
    return Text(pair.asCamelCase);
  }
}


/** 
 * Stateless Widgets are immutable that's mean their properties can't change , all values are final 
 * Instead of stateless widgets we have stateful widgets that might change during the lifetime , to create a stateful widget we need at least two classes
 *                1 - A statefulWidget class
 *                2 - A state class
 * A stateful widget class creates an instance of a state class as the example we have presented above .   
 * 
 *  Note :  every identifiers that start with underscoore (_) are only visible inside library and every dart app is a library even if it dosn't use library directive. 
 */