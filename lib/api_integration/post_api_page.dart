
import 'dart:convert';
import 'package:allwidgetpractise/api_integration/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'api_integration.dart';

class PostApiPage extends StatefulWidget {
  const PostApiPage({super.key});

  @override
  State<PostApiPage> createState() => _PostApiPageState();
}
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();


// late Future<Album> _futureAlbum;
// Future<Album> createAlbum(String title) async {
//   final http.Response response = await http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );
//
//   if (response.statusCode == 201) {
//     return Album.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to create album.');
//   }
// }

class _PostApiPageState extends State<PostApiPage> {

  UserDaata? userDaata;

  String? nam;
  getpost(){
    ApiService().getPostData(email.text,password.text).
    then((value){
      userDaata = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          TextField(
            controller: email,
              decoration: InputDecoration(hintText: 'name',border: OutlineInputBorder())),
      SizedBox(height: 30,),
      TextField(
        controller: password,
          decoration: InputDecoration(hintText: 'job',border: OutlineInputBorder(),)),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () {
       setState(() {
         getpost();
       });
            //  _futureAlbum = createAlbum(email.text);
          }, child: Text('submit')),
         Text(userDaata?.name ?? ""),
          Text(userDaata?.job ?? "")

        ],
      ),

    );
  }

}
