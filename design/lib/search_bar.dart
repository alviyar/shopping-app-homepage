
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width:300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child:Padding(
        padding: const EdgeInsets.only(left:32.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        )
        ),
      ),
    );
  }
}