// ignore_for_file: unnecessary_string_interpolations, avoid_print
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const urlquizz = 'https://jsonplaceholder.typicode.com/users';

  Future<void> getselect() async{
    final url = Uri.parse('$urlquizz');

   final response = await http.get(url);
   print(response.statusCode);
   print(response.body);
  }
 @override
 void initState() {
  super.initState();
  getselect();
 }
final List<Widget> _prot= [

    Center(
    child: Container(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(),
        Text('I am Mohamed mahmoud', style: TextStyle(),),
        
      ],
    )
   
  ),
  ),

      Center(
    child: Container(
    alignment: Alignment.center,
    child: Text("About"),
   
  ),
  ),

      Center(
    child: Container(
    alignment: Alignment.center,
    child: Text("Projects"),
    
  ),
  ),

      Center(
    child: Container(
    alignment: Alignment.center,
    child: Text("Contact"),
   
  ),
  ),
];

  int _selc = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Protfolio', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

     bottomNavigationBar: BottomNavigationBar(
        
        selectedItemColor: Colors.purple,
        currentIndex: _selc,
        type: BottomNavigationBarType.shifting,
         
        onTap: (int index){
          setState(() {
            _selc = index;
          });
        },
        
        items: [
         BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blue,),
          
          label: 'Home'
         ),

                 BottomNavigationBarItem(
          icon: Icon(Icons.question_mark,  color: Colors.blue,),
          label: 'About'
         ),

                 BottomNavigationBarItem(
          icon: Icon(Icons.production_quantity_limits_sharp,  color: Colors.blue,),
          label: 'Projects'
         ),

                 BottomNavigationBarItem(
          icon: Icon(Icons.phone,  color: Colors.blue,),
          label: 'Contact'
         ),

   
        ],
      ),
       
       body: _prot[_selc],

    );
  }
}