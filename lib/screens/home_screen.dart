import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/home_controller.dart';
import '../widgets/separator.dart';
import 'fragments/schedule_fragment.dart';
import 'fragments/task_fragment.dart';

class HomeScreen extends StatelessWidget {
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Obx(
                () => IndexedStack(
                  index: _homeController.selectedIndex.value,
                  children: [TaskFragment(), ScheduleFragment()],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.note),
                Icon(Icons.calendar_today),
                Icon(Icons.add)
              ],
            )
          ],
        ),
      ),
    );
  }
}
