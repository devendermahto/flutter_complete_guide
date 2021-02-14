import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: const EdgeInsets.only(
        left: 5.0,
      ),
      child: RaisedButton(
        color: Colors.blue,
        child: Text('RGR'),
        onPressed: null,
      ),
    );
  }
}
