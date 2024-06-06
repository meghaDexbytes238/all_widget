import 'package:allwidgetpractise/api_integration/putModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PutMethodApi extends StatefulWidget {
  const PutMethodApi({super.key});

  @override
  State<PutMethodApi> createState() => _PutMethodApiState();
}
TextEditingController controllers = TextEditingController();
late Future<Album> _futureAlbum;
class _PutMethodApiState extends State<PutMethodApi> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
             // controller: controllers,
              decoration: const InputDecoration(hintText: 'Enter Title'),
            ),
          ),

        ],
      ),
    );
  }
}
