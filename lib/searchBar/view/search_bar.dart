import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/search_screen.dart';

class SearchbarScreen extends StatelessWidget {
  SearchbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Search'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: mySearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: mySearchDelegate().searchResults.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: ListTile(
              title: Text(mySearchDelegate().searchResults[index].toString()),
            ),
          );
        },
      ),
    );
  }
}

class mySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'flutter',
    'java',
    'javascript',
    'react',
    'anguler',
    'python',
    'flutter sdk',
    'java sdk'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: Icon(Icons.close));
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> sugggations = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: sugggations.length,
      itemBuilder: (BuildContext context, int index) {
        final suggtion = sugggations[index];
        return Card(
          color: Colors.amber,
          child: ListTile(
            title: Text(
              suggtion,
            ),
            onTap: () {
              query = suggtion;
              showResults(context);
            },
          ),
        );
      },
    );
  }
}
