import 'dart:convert';

import 'package:http/http.dart' as http;

class HTTP {
  String url = 'https://jsonplaceholder.typicode.com/photos';

    fetchData() async {
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      print(data.toString());
    }
  }
}