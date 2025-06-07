import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No Data",
            style: TextStyle(fontSize: 33),
          ),
          Icon(
            Icons.sentiment_very_dissatisfied,
            size: 33,
          )
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(105, 255, 82, 82),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Data",
              style: TextStyle(fontSize: 44),
            ),
            Icon(
              Icons.emoji_people_outlined,
              size: 44,
            )
          ],
        ),
      ),
    );
  }
}
