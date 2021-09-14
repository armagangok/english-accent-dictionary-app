import 'package:flutter/material.dart';
import 'widgets/search_button.dart';
import 'widgets/search_textfied.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        color: Colors.grey[200],
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 3,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: searchTextField(textController),
                  ),
                  searchButton(textController, context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}