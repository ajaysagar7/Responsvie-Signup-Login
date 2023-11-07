// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommingSoonScreen extends StatelessWidget {
  final String message;
  const CommingSoonScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$message - C O M M I N G - S O O N'),
      ),
    );
  }
}
