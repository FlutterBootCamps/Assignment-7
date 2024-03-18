import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAPI{

  String url = "https://foodish-api.com/api/";

  Future<String>  getData() async{
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final foodPhoto = jsonDecode(response.body); 
    return foodPhoto['image'];
  }

}