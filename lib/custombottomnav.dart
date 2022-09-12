import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black54,
        border: Border.all(
          color: Colors.white12,
          width: 1
        ),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.house, color: Colors.white,) ),
            IconButton(onPressed: (){}, icon: Icon(Icons.explore, color: Colors.white,) ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_rounded, color: Colors.white,) ),
            IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.white,) ),

          ],
        ),
      ),
    );
  }
}