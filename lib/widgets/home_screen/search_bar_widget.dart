import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  SearchBarWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: const InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          suffix: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 106, 104, 218),
          )),
      onChanged: (enteredValue) => enteredValue,
    );
  }
}
