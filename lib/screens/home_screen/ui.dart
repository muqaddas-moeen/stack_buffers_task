import 'package:flutter/material.dart';
import 'package:stack_buffers_task/config/screen_size_config.dart';
import 'package:stack_buffers_task/model/top_slider.dart';
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

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  TextEditingController searchController = TextEditingController();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          /// Top most Tile of the screen
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 410,
              child: Container(
                  height: 10,
                  color: const Color.fromARGB(255, 230, 228, 228),
                  child: TopMostTileWidget())),

          ///Search Area
          Positioned(
              top: 90,
              right: 0,
              left: 0,
              bottom: 320,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 106, 104, 218),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                height: 40,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child:
                          SearchBarWidget(searchController: searchController),
                    ),
                  ],
                ),
              )),

          ///Middle Area
          Positioned(
              top: 180,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  // height: 700,
                  child: const Padding(
                      padding: EdgeInsets.all(10.0), child: ContentWidget()))),
        ],
      ),
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
