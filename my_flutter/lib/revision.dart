import 'package:flutter/widgets.dart';
import 'package:my_flutter/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:localstorage/localstorage.dart';


const String host = 'http://srv4.aptusmaroc.com:8000/';

// Future<List<Quizz>> getQuizzes(String mytokns) async{

//   List<Quizz> quizzes = [];

//   try{
//      final url = Uri.parse('$host'+'courses/quizzes');
//      final response = 
//      await http.get(url, headers: {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'token $mytokens',
//      });

//      var jsonbody = jsonDecode(response.body);

//      for(Map<String,dynamic> jsonQuizz in jsonbody){
//       quizzes.add(
//         Quizz.fromJson(jsonQuizz)
//       );
//      }
//   }catch (e){
//     print(e);
//   }
//   return quizzes;
// }