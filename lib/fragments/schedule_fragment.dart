import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/separator.dart';

class ScheduleFragment extends StatelessWidget {
  final _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    print('schedule page!!!');

    return Navigator(
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32),
                        child: Text('task $index', style: TextStyle(color: Colors.white),),
                      );
                    },
                  ),
                ),
                Separator(),
              ],
            ),
          ),
        );
      },
    );
  }
}
