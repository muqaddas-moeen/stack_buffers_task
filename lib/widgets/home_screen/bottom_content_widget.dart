import 'package:flutter/material.dart';
import 'package:stack_buffers_task/data/barbar_detail_list.dart';
import 'package:stack_buffers_task/widgets/home_screen/bottom_list_tile_widget.dart';

class BottomContentWidget extends StatelessWidget {
  const BottomContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        children: [
          ListTile(
            leading: Image.network(
              barbarDetailList[0].image,
              width: 120,
              height: 10,
            ),
            title: Text(
              barbarDetailList[0].title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                Text(barbarDetailList[0].subtitle),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(Icons.social_distance),
                    Text(barbarDetailList[0].distance)
                  ],
                ),
                //ElevatedButton(onPressed: () {}, child: Text(buttonText))
              ],
            ),
          ),
          ListTile(
            leading: Image.network(
              barbarDetailList[0].image,
              width: 120,
              height: 10,
            ),
            title: Text(
              barbarDetailList[0].title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                Text(barbarDetailList[0].subtitle),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(Icons.social_distance),
                    Text(barbarDetailList[0].distance)
                  ],
                ),
                //ElevatedButton(onPressed: () {}, child: Text(buttonText))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
