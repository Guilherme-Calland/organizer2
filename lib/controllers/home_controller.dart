import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final int taskIndex = 0;
  final int scheduleIndex = 1;

  RxInt selectedIndex = 0.obs;

  void goToTasks(){
    selectedIndex.value = taskIndex;
  }

  void goToSchedule(){
    selectedIndex.value = scheduleIndex;
  }

}