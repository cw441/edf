import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/productmodel.dart';



class Getallproduct {

  Future<List<PurpleAttributes>> getAll() async
  {
    http.Response response = await http.get(
        Uri.parse('https://mahmoudaliapp.herokuapp.com/api/masls?populate=*'));
    if (response.statusCode == 200) {
      List <dynamic> data = jsonDecode(response.body);

      List<PurpleAttributes> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(PurpleAttributes.fromJson(data[i])
        );
      }
      return productList;
    }else{
      throw Exception('problem ${response.statusCode}');
  }
}
}