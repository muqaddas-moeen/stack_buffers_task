import 'package:flutter/material.dart';
import 'package:stack_buffers_task/config/screen_size_config.dart';
import 'package:stack_buffers_task/data/barbar_detail_list.dart';

class BottomListTileWidget extends StatelessWidget {
  const BottomListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: barbarDetailList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ListTileWidget(
            id: barbarDetailList[index].id,
            image: barbarDetailList[index].image,
            title: barbarDetailList[index].title,
            subtitle: barbarDetailList[index].subtitle,
            buttonText: barbarDetailList[index].buttonText,
            distance: barbarDetailList[index].distance));
  }
}

class ListTileWidget extends StatelessWidget {
  String id;
  String image;
  String title;
  String subtitle;
  String buttonText;
  String distance;
  ListTileWidget(
      {super.key,
      required this.id,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.distance});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: SizeConfig.safeBlockHorizontal * 80,
          height: SizeConfig.safeBlockVertical * 15,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListTile(
            leading: Image.network(
              image,
              width: SizeConfig.safeBlockHorizontal * 30,
              height: SizeConfig.safeBlockVertical * 15,
            ),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                Text(subtitle),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [const Icon(Icons.social_distance), Text(distance)],
                ),
                //ElevatedButton(onPressed: () {}, child: Text(buttonText))
              ],
            ),
          ),
        ));
  }
}
