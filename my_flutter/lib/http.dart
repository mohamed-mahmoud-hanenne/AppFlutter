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
   
   
     final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
     final response = await http.get(url);
    
     final responsebody = jsonDecode(response.body);
     return responsebody;
  }

  static const urlquiz = 'https://jsonplaceholder.typicode.com/todos/';
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
  // void initState(){
  //   super.initState();
  //   getData();
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Http')),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          
           return Container(
            child: Text(
              snapshot.data[0]['title']
            ),
          );
        
         
        })
        );
   
  }
}