import 'package:flutter/material.dart';
import 'package:interview2/search_by_tybe.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key, required this.searchController, required this.onSubmit});

  final TextEditingController searchController;
  void Function(String)? onSubmit;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
          ),
          fillColor: Colors.white,
          hintText: 'Search by Pet type',
          suffixIcon: const Icon(Icons.search,size: 35,)
      ),
      onSubmitted: onSubmit
      // ),
    );
  }
}
