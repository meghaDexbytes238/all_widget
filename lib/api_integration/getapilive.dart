import 'dart:convert';
import 'package:allwidgetpractise/api_integration/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApi extends StatefulWidget {
  const GetApi({super.key});
  @override
  State<GetApi> createState() => _GetApiState();
}
class _GetApiState extends State<GetApi> {
List<GetApiModel> mylist = [];
  Future<void> getUsers() async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        dynamic data=jsonDecode(response.body.toString());
        if (data != null) {
          mylist = <GetApiModel>[];
          data.forEach((v) {
            mylist!.add(new GetApiModel.fromJson(v));
          });
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, state) {
          return ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (context, index) {

              return Text("${mylist.elementAt(index).title}");

             // return Text("${}" ?? "");
            },
          );
        },
      ),
    );
  }
}
