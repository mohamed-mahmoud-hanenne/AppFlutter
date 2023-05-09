import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
var id;
var title;


Future<void>  getData() async{
 print("mmm");
    var url = Uri.parse('http://192.168.0.120:8000/quizzes/');
   final  response = await http.get(url);
    var results  = jsonDecode(response.body);
   print("jjj");
     if(response.statusCode == 200){
      print("hh");
       var results  = jsonDecode(response.body);
       print("lll");
       this.id = results['id'];
       print(results['id']);
     }
    
    else{
      print("erreur");
    }
   
  }

static const urlPrefix = 'http://192.168.0.120:8000/quizzes/';
Future<void> makeGetRequest() async {
  print('kfvk,fgk');
  final url = Uri.parse('$urlPrefix');
  print("jejjej");
  get(url).then((response) {
    print("kkkee");
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
  }).catchError((error) {
    print('Error: $error');
  });
}



  @override
  // void iniState() async{
  //   super.initState();
  //   makeGetRequest();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Http"),
      ),

      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return Container(
                child: Text('id is $id'),
              );
            }
            else{
             return CircularProgressIndicator(
              color: Colors.amber,
              
             );
            }
          }
          ),
      ),

      // body: Center(
        
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //     ElevatedButton(
      //   child: Text('get'),
      //   onPressed: () {
      //     getData();
      //   },
      //   ),
      //   Container(
      //     child: Text('id is $id'),
      //   )
      //     ],
      //   ),
    
      // ),

        
    );
  }
}