// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  final Function onTap;

  const ClearButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(left: 20),
      color: Colors.grey,
      icon: Icon(Icons.clear, size: 18.0),    
      onPressed: () => onTap(),
    );
  }
}