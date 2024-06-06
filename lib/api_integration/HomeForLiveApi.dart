import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api_integration.dart';
import 'model_for_liveapi.dart';

class HomeScreenLiveApi extends StatefulWidget {
  const HomeScreenLiveApi({super.key});
  @override
  State<HomeScreenLiveApi> createState() => _HomeScreenLiveApiState();
}
class _HomeScreenLiveApiState extends State<HomeScreenLiveApi> {

   BirthdayList? birthdayList;
  //
  // Future getUsers() async {
  //   try {
  //     String Token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjU5YmUxNGZkNzYzZDQyMGYwNzljNjNjZWZhZmMyYzJhNjhhYzFkZjBiNzEwZGI5ZDA4OGUzM2U5ZmQzNWEyNzZmMjIwNzNjOGViYjcxNDUiLCJpYXQiOjE3MTMyNDM5MTYuNjU5MjkzLCJuYmYiOjE3MTMyNDM5MTYuNjU5MzA3LCJleHAiOjE3NDQ3Nzk5MTYuNjUzOTgxLCJzdWIiOiI0MyIsInNjb3BlcyI6WyJNZW1iZXIiXX0.K_iskSFJLZbOY4rpiFUOEcZNAdBSLLKbqqPgsu-GicT9DvFlS92oEhqWIPZP0iSEzp1DNNNwmLJ4GydTn032Pix31267CNzR1jBcK_42bwKcCgJbXAXMyAdeWWpFiyjBDC4HmYBvVouXYKXSYF9SO-ShPfK1YyZT_KlNhMLb6DmPIgeR6viQQ7XVh-Hsiptzg6tZuUdH9CPFPheSbCjWhvT5BGM9SxvAI8ue7FGKBUF700iapM-pWIf-7SAru0rZ5am81xdyRbw7oRfmkpo6qKH_tpmVAxHpmvm_QJus5oHnZRUQ_O5Dxa2GcnVq4V9fQuhx7r553VcgKbp3kqOMbwiANq7aiOftc0Pv3bmL1pfoQW9-TceRGLF2_t66iyd7EiUzIR53guQsXn_SdSd2XyNsH5Wk2VnEHTGErtR04ltq0qzB4cwJRH-oyVYzOqZdMy24YW9Y9dUn0PdHg-MgWv60u_6ZHjYB7Gw8gC_V7San05IdWNMr7ZObyIxMCwvYDT-6UQ16ibI8YZ1HZpLRU7tEq1pGZMFOQtPU_I8t5RUhtKzfmke7TwJbxWBkI7VeVN2zvhciLzCuky62zrSLGpN9pXX5G_7oReShYlOf5qO4huQZ9mFtIAuM1gkUAaUL7-EflDmGRXnFtrjTbTnf-8P1eh1sDcJa2ShpZFHiQTM';
  //
  //     var url = Uri.parse("https://cms-api.dexbytes.in/api/birthday/list");
  //     var response = await http.get(url,headers: {
  //       'Content-Type': 'application/json',
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer $Token',
  //     }
  //     );
  //     // var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  //     // var response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       print(response.body);
  //       var data2 = json.decode(response.body);
  //       print(data2);
  //       birthdayList = BirthdayList.fromJson(data2);
  //       print(birthdayList);
  //
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      FutureBuilder<BirthdayList>(
        future: ApiService().fetchData(),
        builder: (BuildContext context,snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.data?.length,
              itemBuilder: (context, index) {
                //  final post = snapshot.data![index];
                return ListTile(
                  title: Text(snapshot.data?.data?[index].name ?? ""),
                );
              },
            );
          }
        },
      )
      // FutureBuilder<List<Data>?>(
      //   future: ApiService().fetchData(),
      //   builder: (BuildContext context,snapshot) {
      //       if (snapshot.hasError) {
      //       return Text('Error: ${snapshot.error}');
      //     } else {
      //       return ListView.builder(
      //         itemCount: snapshot.data?.length,
      //         itemBuilder: (context, index) {
      //         //  final post = snapshot.data![index];
      //           return ListTile(
      //             title: Text(snapshot.data?[index].name ?? ""),
      //           );
      //         },
      //       );
      //     }
      //   },
      // )


    );
  }
}
