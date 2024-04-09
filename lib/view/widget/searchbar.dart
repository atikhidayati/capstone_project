import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        fillColor: Colors.white,
        border: OutlineInputBorder(),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        filled: true,
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
      ),
    );
  }
}
