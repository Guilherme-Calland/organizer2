import 'package:flutter/material.dart';

class NavigationUtils {
  static replacePage({required BuildContext context, required Widget newPage}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => newPage,
      ),
    );
  }
}
