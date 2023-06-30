import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final Function(String) onSearch;

  const Search({Key? key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onSearch(value),
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.search),
        hintText: '검색해주세요',
      ),
    );
  }
}
