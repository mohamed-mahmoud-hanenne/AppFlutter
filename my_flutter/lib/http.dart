import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' ;




class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {

  Future<void> getData() async{
    print("mm");
    
     final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    
     print(response.statusCode);
     print(response.body);
  }

  static const urlquiz = 'http://192.168.1.130:8000/courses/quizzes';
Future<void> makeGetRequest() async {
  print('Hello');
  final url = Uri.parse('$urlquiz');
  print("in");
  http.get(url).then((response) {
    print("flutter");
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
  }).catchError((error) {
    print('Error: $error');
  });
}

  @override
  void initState(){
    super.initState();
    makeGetRequest();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Http')),
      body: FutureBuilder(
        future: makeGetRequest(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
         if(snapshot.hasData){
           return Container(
            child: Text(
              snapshot.data[0]['title']
            ),
          );
         }
         else return CircularProgressIndicator();
         
        })
        );
   
  }
}