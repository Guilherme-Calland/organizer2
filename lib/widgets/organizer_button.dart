import 'package:flutter/material.dart';

class OrganizerButton extends StatelessWidget {
  final Function() onTap;
  final Widget child;
  OrganizerButton({required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child
    );
  }
}