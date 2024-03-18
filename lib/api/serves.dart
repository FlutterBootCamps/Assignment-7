import 'dart:convert';

import 'package:http/http.dart'as http;
class Serves{
String bascUrl="https://foodish-api.com/";
Future getFoodImage()async{
 var response=await http.get(Uri.parse("${bascUrl}api/"));
 var jsonData=jsonDecode(response.body);
 print(jsonData["image"]);
 String theImage=response.body;
    return jsonData["image"];

}
}