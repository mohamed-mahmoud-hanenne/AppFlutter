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
   

     final url = Uri.parse("http://192.168.1.130:8000/constants/?model=question");
     final response = await http.get(url);
    
     final responsebody = jsonDecode(response.body);
     print(response.statusCode);
  }

  final token = '9912c0e7cf5b5ff696be4819dbcf88f597d4feb75b65b46ef1d750f48c28f88c';
  static const urlquiz = 'http://srv4.aptusmaroc.com:8000/courses/quizzes';
  Future<void> makeGetRequest() async {
  print('Hello');
  var res;
  final url = Uri.parse('$urlquiz');
  await http.get(url,headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'token $token',
    }).then((response) {
        res = jsonDecode(response.body);
      
     // print(responsebody[1]['title']) ;
    
    
  }).catchError((error) {
    print('Error: $error');
    
  });return res;
  
}

  
  // void initState(){
  //   super.initState();
  //   makeGetRequest();
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Http')),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i){
              return Column(
                children: [
                  Center(child: Text(snapshot.data[i]['title'])),
                  Center(child: Text(snapshot.data[i]['description'])),
                ],
              );
            }
            );
        }
        else return CircularProgressIndicator();
        
        })
        );
   
  }
}