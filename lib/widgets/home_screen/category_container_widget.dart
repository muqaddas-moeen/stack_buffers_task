import 'package:flutter/material.dart';
import 'package:stack_buffers_task/data/category_list.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: categoryList.length,
      itemBuilder: (context, index) => CircularAvatarWidget(
          image: categoryList[index].image,
          color: categoryList[index].color,
          id: categoryList[index].id,
          title: categoryList[index].title),
    );
  }
}

class CircularAvatarWidget extends StatelessWidget {
  String id;
  String image;
  Color color;
  String title;
  CircularAvatarWidget(
      {super.key,
      required this.image,
      required this.color,
      required this.id,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: color,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 28,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(image)),
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
