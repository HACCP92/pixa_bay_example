import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final ValueChanged<String> onSearch;

  const Search({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.search),
        hintText: '검색해주세요',
      ),
    );
  }
}
