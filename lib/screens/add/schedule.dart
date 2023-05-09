import 'package:flutter/material.dart';

class AddScheduledTaskPage extends StatelessWidget {
  const AddScheduledTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Text('add scheduled task page', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}