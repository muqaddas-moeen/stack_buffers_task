import 'package:flutter/material.dart';
import 'package:stack_buffers_task/config/screen_size_config.dart';
import 'package:stack_buffers_task/data/top_slider_list.dart';
import 'package:stack_buffers_task/model/top_slider.dart';

class TopSliderWidget extends StatelessWidget {
  TopSliderWidget({super.key});
  //List<TopSlider> topSliderList;

  /// View for the top slider that scrolls horizontally.
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: topSliderList.length,
      itemBuilder: (context, index) {
        TopSlider sliderItems = topSliderList[index];
        return _buildSlider(sliderItems, context);
      },
    );
  }

  /// Builds an individual slider widget.
  Widget _buildSlider(TopSlider topSlider, BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: SizeConfig.safeBlockHorizontal * 80,
        height: SizeConfig.safeBlockVertical * 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // image: DecorationImage(
          //   image: NetworkImage(image),
          //   fit: BoxFit.cover,
          // ),
          color: Colors.pink,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                topSlider.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(topSlider.description),
              ElevatedButton(
                  onPressed: () {}, child: Text(topSlider.buttonText))
            ],
          ),
        ),
      ),
    );
  }
}
