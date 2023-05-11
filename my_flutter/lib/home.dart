// ignore_for_file: unnecessary_string_interpolations, avoid_print

import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// var id;
// var title;

// Future<void> getData() async{

//     Response? response ;
    
//   try {
//      var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
//      response = await http.get(url);
    
//   } catch (e) {
//     print(e.toString());
//     response = null;
//   }
 
//  print(response!.statusCode.toString());
//  print(response.body);

// }


  @override
  // void iniState() async{
  //   super.initState();
  //   makeGetRequest();
  // }

  final List<Widget> _screens = [
    Center(
      child:   Container(
        alignment: Alignment.center,
        width: 400,
        height: 300,
        color: Colors.amber,
      
      child: Text("Home", style: TextStyle(color: Colors.blue),),
    ),
    ),
  

    Center(
      child:   Container(
        alignment: Alignment.center,
        width: 400,
        height: 300,
        color: Colors.amber,
      
      child: Text("Reception", style: TextStyle(color: Colors.blue),),
    ),
    ),

      Center(
      child:   Container(
        alignment: Alignment.center,
        width: 400,
        height: 300,
        color: Colors.amber,
      
      child: Text("Favorites", style: TextStyle(color: Colors.blue),),
    ),
    ),
  ];

  int _selc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("pages"),
      ),

      // body: Center(
      //   child: FutureBuilder(
      //     future: getData(),
      //     builder: (context, snapshot){
      //       if(snapshot.hasData){
      //         return Container(
      //           child: Text('id is $id'),
      //         );
      //       }
      //       else{
      //        return CircularProgressIndicator(
      //         color: Colors.amber,
              
      //        );
      //       }
      //     }
      //     ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        currentIndex: _selc,

        onTap: (int index){
          setState(() {
            _selc = index;
          });
        },
        items: [
         BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
         ),

                 BottomNavigationBarItem(
          icon: Icon(Icons.inbox),
          label: 'Reception'
         ),

                 BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites'
         ),
        ],
      ),

        body: _screens[_selc],
    );
  }
}