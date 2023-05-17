import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;


class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Http test"),
    );
  }
}