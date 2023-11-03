import 'package:flutter/material.dart';
import 'package:paint/pages/line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin {
  TabController? controller;

  List<String> tabLabels = [
    'Line',
    
  ];

  List<Widget> tabPages = [
    const LinePage(),
    
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: tabLabels.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Custom Paint Basics'),
        bottom: TabBar(
          isScrollable: true,
          controller: controller,
          tabs: [for (String label in tabLabels) Tab(text: label)],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [for (Widget page in tabPages) page],
      ),
    );
  }
}