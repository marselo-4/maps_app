import 'package:flutter/material.dart';

class SearchDestinationDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('Aqui se muestran los resultados');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('Aqui se muestran las sugerencias');
  }
}
