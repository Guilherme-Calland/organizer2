import 'package:flutter/material.dart';

import '../widgets/separator.dart';

class TaskFragment extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (routeSettings) => MaterialPageRoute(
        builder: (context) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.task,
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
                  },
                ),
              ),
              Separator(),
            ],
          ),
        ),
      ),
    );
  }
}
