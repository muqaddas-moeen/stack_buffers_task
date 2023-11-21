import 'package:flutter/material.dart';
import 'package:stack_buffers_task/data/barbar_detail_list.dart';
import 'package:stack_buffers_task/model/barbar_detail.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_content_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_list_tile_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/content_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/search_bar_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/top_most_tile_widget.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    child: SearchBarWidget(searchController: searchController),
                  ),
                ],
              ),
            )),

        ///Content Area
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

        // Positioned(
        //     top: 550,
        //     right: 0,
        //     left: 0,
        //     bottom: 0,
        //     child: Container(
        //         color: Colors.blueGrey,
        //         // height: 700,
        //         child: Flexible(
        //           child: ListView.builder(
        //               shrinkWrap: true,
        //               itemCount: barbarDetailList.length,
        //               itemBuilder: (context, index) {
        //                 BarbarDetail barbarDetail = barbarDetailList[index];
        //                 return ListTileWidget(barbarDetail: barbarDetail);
        //               }),
        //         ))),
      ],
    );
  }
}
