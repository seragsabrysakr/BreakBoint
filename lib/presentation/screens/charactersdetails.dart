import 'package:breakboint/constants/strings.dart';
import 'package:flutter/material.dart';

class CharactersDetails extends StatefulWidget {
  const CharactersDetails({Key? key}) : super(key: key);

  @override
  State<CharactersDetails> createState() => _CharactersDetailsState();
}

class _CharactersDetailsState extends State<CharactersDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(characterdetails)),
    );
  }
}