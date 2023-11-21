import 'package:flutter/material.dart';
import 'package:stack_buffers_task/config/screen_size_config.dart';
import 'package:stack_buffers_task/data/barbar_detail_list.dart';
import 'package:stack_buffers_task/model/barbar_detail.dart';

class BottomListTileWidget extends StatelessWidget {
  BottomListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        //shrinkWrap: true,
        itemCount: barbarDetailList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          BarbarDetail barbarDetail = barbarDetailList[index];
          return ListTileWidget(barbarDetail: barbarDetail);
        });
  }
}

class ListTileWidget extends StatelessWidget {
  BarbarDetail barbarDetail;
  ListTileWidget({super.key, required this.barbarDetail});

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
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    barbarDetail.image,
                    width: SizeConfig.safeBlockHorizontal * 50,
                    height: SizeConfig.safeBlockVertical * 25,
                  ),
                  Text(
                    barbarDetail.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )

            // ListTile(
            //   leading: Image.network(
            //     barbarDetail.image,
            //     width: SizeConfig.safeBlockHorizontal * 30,
            //     height: SizeConfig.safeBlockVertical * 15,
            //   ),
            //   title: Text(
            //     barbarDetail.title,
            //     style: const TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   subtitle: Row(
            //     children: [
            //       const Icon(
            //         Icons.star,
            //         color: Colors.yellow,
            //         size: 20,
            //       ),
            //       Text(barbarDetail.subtitle),
            //     ],
            //   ),
            //   trailing: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Row(
            //         children: [
            //           const Icon(Icons.social_distance),
            //           Text(barbarDetail.distance)
            //         ],
            //       ),
            //       //ElevatedButton(onPressed: () {}, child: Text(buttonText))
            //     ],
            //   ),
            // ),
            ));
  }
}
