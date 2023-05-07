import 'package:flutter/material.dart';



class Navebar extends StatelessWidget {
  const Navebar({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      
        child :
         Container(
          margin: EdgeInsets.fromLTRB(250, 0, 0, 550),
          child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.clear),
          
        ),
         ),

    );
  }
}

