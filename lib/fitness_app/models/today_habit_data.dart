import 'package:flutter/material.dart';

class TodayHabitData {
  TodayHabitData({
    this.name = '',
    this.desc = '',
    this.imagePath = '',
    this.index = 0,
    this.isSelected = false,
    this.animationController,
  });

  String name;
  String imagePath;
  int index;
  bool isSelected;
  String desc;

  AnimationController animationController;

  static List<TodayHabitData> todayHabitList = <TodayHabitData>[
    TodayHabitData(
      imagePath: 'assets/fitness_app/tab_1.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TodayHabitData(
      imagePath: 'assets/fitness_app/tab_2.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TodayHabitData(
      imagePath: 'assets/fitness_app/tab_3.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TodayHabitData(
      imagePath: 'assets/fitness_app/tab_4.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
