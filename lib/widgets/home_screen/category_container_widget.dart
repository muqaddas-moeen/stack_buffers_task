import 'package:flutter/material.dart';
import 'package:stack_buffers_task/data/category_list.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: categoryList.length,
      itemBuilder: (context, index) => CircularAvatar(
          image: categoryList[index].image,
          color: categoryList[index].color,
          id: categoryList[index].id,
          title: categoryList[index].title),
    );
  }
}

class CircularAvatar extends StatelessWidget {
  String id;
  String image;
  Color color;
  String title;
  CircularAvatar(
      {super.key,
      required this.image,
      required this.color,
      required this.id,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: color,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 28,
            child: Image.asset(image),
          ),
        ),
        Text(title)
      ],
    );
  }
}
