import 'package:flutter/material.dart';
import 'package:stack_buffers_task/config/screen_size_config.dart';
import 'package:stack_buffers_task/widgets/home_screen/category_container_widget.dart';

class SearchBarWidget extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  SearchBarWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return
        // TextField(
        //   controller: searchController,
        //   decoration: const InputDecoration(
        //       hintText: 'Search',
        //       prefixIcon: Icon(Icons.search),
        //       suffix: CircleAvatar(
        //         backgroundColor: Color.fromARGB(255, 106, 104, 218),
        //       )),
        //   onChanged: (enteredValue) => enteredValue,
        // );

        SizedBox(
      width: SizeConfig.safeBlockHorizontal * 85,
      height: SizeConfig.safeBlockVertical * 7,
      child: Material(
        elevation: 5.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: TextField(
          controller: searchController,
          cursorHeight: 25,
          autofocus: true,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search',
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Color.fromARGB(255, 106, 104, 218),
                child: Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              ),
            ),
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
