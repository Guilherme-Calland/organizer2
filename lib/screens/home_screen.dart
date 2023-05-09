import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/organizer_button.dart';
import '../fragments/schedule_fragment.dart';
import '../fragments/task_fragment.dart';

class HomeScreen extends StatelessWidget {
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 64),
            Obx(
              () => Expanded(
                child: [TaskFragment(), ScheduleFragment()]
                    .elementAt(_homeController.selectedIndex.value),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrganizerButton(
                  onTap: () => _homeController.goToTasks(),
                  child: Icon(
                    Icons.note,
                    color: Colors.white,
                  ),
                ),
                OrganizerButton(
                  onTap: () => _homeController.goToSchedule(),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
                OrganizerButton(
                  onTap: () {
                    
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
