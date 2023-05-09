import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Text('add task page',style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}