import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Do veniam et enim irure voluptate.", 
            style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}