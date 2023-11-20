import 'package:flutter/material.dart';
import 'package:stack_buffers_task/model/category.dart';

List<Category> categoryList = [
  Category(
      id: '1',
      image: 'assets/images/haircut.png',
      color: const Color.fromARGB(255, 173, 154, 147),
      title: 'Hair Cut'),
  Category(
      id: '2',
      image: 'assets/images/shaves.png',
      color: const Color.fromARGB(255, 127, 188, 194),
      title: 'Shaves'),
  Category(
      id: '3',
      image: 'assets/images/haircolor.png',
      color: const Color.fromARGB(255, 226, 165, 142),
      title: 'Hair Color'),
];
