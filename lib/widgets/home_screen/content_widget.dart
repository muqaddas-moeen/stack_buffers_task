import 'package:flutter/material.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_list_tile_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/category_container_widget.dart';
import 'package:stack_buffers_task/widgets/home_screen/top_slider_widget.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ///Slider
        Flexible(child: TopSliderWidget()),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ))
          ],
        ),

        ///Categories
        Flexible(child: CategoryWidget()),

        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Freelance Barbars',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ))
            ],
          ),
        ),

        ///List of Barbars
        //Expanded(child: BottomListTileWidget())
      ],
    );
  }
}
