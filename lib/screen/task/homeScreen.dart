import 'package:flutter/material.dart';
import 'package:taskmanager/Style/Style.dart';
import 'package:taskmanager/component/cancelTaskList.dart';
import 'package:taskmanager/component/completedTaskList.dart';
import 'package:taskmanager/component/progressTaskList.dart';

import '../../component/appBottomNav.dart';
import '../../component/newTaskList.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int TabIndex = 0;
  onItemTapped(int index) {
    setState(() {
      TabIndex = index;
    });
  }

  final widgetOptions = [
    newTaskList(),
    progressTaskList(),
    completedTaskList(),
    cancelTaskList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        backgroundColor: colorGreen,
      ),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex, onItemTapped),
    );
  }
}
