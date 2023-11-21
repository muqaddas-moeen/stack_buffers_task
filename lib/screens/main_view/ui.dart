import 'package:flutter/material.dart';
import 'package:stack_buffers_task/config/screen_size_config.dart';
import 'package:stack_buffers_task/model/top_slider.dart';
import 'package:stack_buffers_task/pages/home_screen_page.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_list_tile_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_tab_bar_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/category_container_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/content_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/search_bar_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/stack_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/top_most_tile_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/top_slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: TabBarView(controller: tabController, children: [
        HomeScreenPage(),
        const Center(
          child: Text('Location page'),
        ),
        const Center(
          child: Text('Booking page'),
        ),
        const Center(
          child: Text('Message page'),
        ),
        const Center(
          child: Text('Profile page'),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 90,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomBarNavigation(
            selectedIndex: selectedIndex,
            onItemTapped: onItemTapped,
          ),
        ),
      ),
    );
  }
}
