import 'package:flutter/material.dart';

import '../../widgets/separator.dart';

class ScheduleFragment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64),
              Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 64,
              ),
              SizedBox(height: 24),
              Separator(),
              Expanded(
                child: ListView.builder(
                    itemCount: 1000,
                    itemBuilder: (context, index) {
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32),
                        child: Text('task $index'),
                      );
                    }),
              ),
              Separator(),
            ],
          ),
        ),
      ),
    );
  }
}