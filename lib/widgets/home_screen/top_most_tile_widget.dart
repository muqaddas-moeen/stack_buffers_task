import 'package:flutter/material.dart';

class TopMostTileWidget extends StatelessWidget {
  const TopMostTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22.0,
          child: CircleAvatar(
              backgroundColor: Colors.amber,
              maxRadius: 20.0,
              minRadius: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                    'https://media.istockphoto.com/id/1399611777/photo/portrait-of-a-smiling-little-brown-haired-boy-looking-at-the-camera-happy-kid-with-good.jpg?s=1024x1024&w=is&k=20&c=0A-h2Rnfc1Q1fVJIKGNMq5VfoVKbA1Hbn2eEI872hTE='),
              )),
        ),
        title: const Text(
          'Ibne Riead',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 221, 220, 220),
          radius: 22,
          child: CircleAvatar(
            maxRadius: 20.0,
            minRadius: 10.0,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            //radius: 20.0,
            child: Icon(Icons.notifications_active_outlined),
          ),
        ),
      ),
    );
  }
}
