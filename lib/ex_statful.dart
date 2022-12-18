import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions =
      <WordPair>[]; // declared to be used as a list of Word pair
  final _biggerFont = const TextStyle(
      fontSize:
          18); // used to display the fontsize of the text larger than the normal

  @override
  Widget build(BuildContext context) {
    /**
     *  - Generate and display a list of word pairings as the scrolls the list grows infinitely 
     *    by using ListView widget as the ListTile
     *  - A ListView's builder factory allows us to build a lazily list view on demand
     *  - we need to take the following steps to create an example of the list view :
     *          1 - create a ListView widget 
     *          2 - call the ListView builder constructor that creates the list view to be display the suggestions word pairing
     *          3 - the ListView class provides a property of itemBuilder ! which is a factory builder and a callback function
     *              specified as an anonymous function , it has two params (buildContext,iterator) 
     */
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider(); /*2*/
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return ListTile(
            title: Text(
              _suggestions[index].asPascalCase + i.toString(),
              style: _biggerFont,
            ),
          );
        });
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