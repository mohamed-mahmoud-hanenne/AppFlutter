import 'package:flutter/material.dart';
import 'package:my_flutter/getdata.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HTTP http = HTTP();
  @override
  void iniState() {
    super.initState();
    http.fetchData();
  }

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Http"),
        centerTitle: true,
      ),
    );
  }
}