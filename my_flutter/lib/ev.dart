import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/models.dart';
import 'package:my_flutter/revision.dart';

class MyEva extends StatefulWidget {
  const MyEva({super.key});

  @override
  State<MyEva> createState() => _MyEvaState();
}

class _MyEvaState extends State<MyEva> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: Text("hello"),),
      // body: FutureBuilder(
      //   future: getQuizzes(
      //     Storage.getItem('token')
      //   ),
      //   builder: (context, snapshot){
      //     if(snapshot.hasData && snapshot.data !=null){
      //       List<Quizz> quizzes = snapshot.data!;
      //       return ListView.builder(
      //         itemCount: quizzes.length,
      //         itemBuilder: (context,index){
      //           return Text(quizzes[index].description);
      //         }
      //         );
      //     }else return CupertinoActivityIndicator();
      //   }
        
      // ),
    );
  }
}