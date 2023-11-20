import 'package:flutter/material.dart';
import 'package:stack_buffers_task/data/top_slider_list.dart';
import 'package:stack_buffers_task/model/top_slider.dart';

class TopSliderWidget extends StatelessWidget {
  TopSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topSliderList.length,
        itemBuilder: (context, index) => SliderContainer(
            id: topSliderList[index].id,
            title: topSliderList[index].title,
            description: topSliderList[index].description,
            buttonText: topSliderList[index].buttonText,
            image: topSliderList[index].image));
  }
}

class SliderContainer extends StatelessWidget {
  String id;
  String title;
  String description;
  String buttonText;
  String image;
  SliderContainer(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.buttonText,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          color: Colors.pink,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(description),
              ElevatedButton(onPressed: () {}, child: Text(buttonText))
            ],
          ),
        ),
      ),
    );
  }
}
