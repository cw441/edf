
import 'dart:convert';

import 'package:http/http.dart' as http;




 Future <dynamic> insert() async{
    var res = await http.post(Uri.parse( "https://mamaamw.herokuapp.com/api/masls?populate=*"),
        headers : {
          "Content-Type" : "application/x-www-form-urlencoded"
        }
    );
    Map<String, dynamic> data = jsonDecode(res.body);
    return data;
  }
  // body: {"name" : name.text, "desc" : desc.text,},
