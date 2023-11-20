import 'package:flutter/material.dart';
import 'package:stack_buffers_task/model/top_slider.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_tab_bar_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/category_container_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/search_bar_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/stack_widget.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 410,
              child: Container(
                height: 10,
                color: const Color.fromARGB(255, 230, 228, 228),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22.0,
                    child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        maxRadius: 20.0,
                        minRadius: 10.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                              'https://media.istockphoto.com/id/1399611777/photo/portrait-of-a-smiling-little-brown-haired-boy-looking-at-the-camera-happy-kid-with-good.jpg?s=1024x1024&w=is&k=20&c=0A-h2Rnfc1Q1fVJIKGNMq5VfoVKbA1Hbn2eEI872hTE='),
                        )),
                  ),
                  title: const Text(
                    'Ibne Riead',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 221, 220, 220),
                    radius: 22,
                    child: CircleAvatar(
                      maxRadius: 20.0,
                      minRadius: 10.0,
                      //radius: 20.0,
                      child: Icon(Icons.notifications_active_outlined),
                    ),
                  ),
                ),
              )),
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
                // child: Container(
                //     height: 20,
                //     width: 100,
                //     color: Colors.white,
                //     child: SearchBarWidget(searchController: searchController)),
              )),
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
                  height: 70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: TopSliderWidget()),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Categories',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'View all',
                                style: TextStyle(color: Colors.grey),
                              ))
                        ],
                      ),
                      Expanded(child: CategoryWidget())
                    ],
                  ))),
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
