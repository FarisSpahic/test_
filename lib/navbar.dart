import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           TitleWidget(),
          ControlButtons()
        ]
          )
        
      
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'M', style: TextStyle(color: Colors.green, fontFamily: "Righteous", fontSize: 24)),
                TextSpan(text: 'emeoire', style: TextStyle(color: Colors.white, fontFamily: "Righteous", fontSize: 24))
              ]
            ));
  }
}


class ControlButtons extends StatelessWidget {
  const ControlButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: Colors.white,))
      ],
    );
  }
}