
import 'dart:convert';
import 'package:allwidgetpractise/api_integration/post_model.dart';
import 'package:allwidgetpractise/api_integration/putModel.dart';
import 'model_for_liveapi.dart';
import 'models.dart';
import 'package:http/http.dart' as http;


class ApiService {

  Future<List<GetApiModel>?> getUsers() async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<GetApiModel> model = List<GetApiModel>.
        from(json.decode(response.body).map((x) => GetApiModel.fromJson(x)));
        print(response.body);
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }


  // Future<void> getUsers() async {
  //   try {
  //     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  //     var response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       dynamic data=jsonDecode(response.body.toString());
  //
  //
  //       if (data != null) {
  //         mylist = <GetApiModel>[];
  //         data.forEach((v) {
  //           mylist!.add(new GetApiModel.fromJson(v));
  //         });
  //       }
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  Future getUsers2() async {
    try {
      String Token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjU5YmUxNGZkNzYzZDQyMGYwNzljNjNjZWZhZmMyYzJhNjhhYzFkZjBiNzEwZGI5ZDA4OGUzM2U5ZmQzNWEyNzZmMjIwNzNjOGViYjcxNDUiLCJpYXQiOjE3MTMyNDM5MTYuNjU5MjkzLCJuYmYiOjE3MTMyNDM5MTYuNjU5MzA3LCJleHAiOjE3NDQ3Nzk5MTYuNjUzOTgxLCJzdWIiOiI0MyIsInNjb3BlcyI6WyJNZW1iZXIiXX0.K_iskSFJLZbOY4rpiFUOEcZNAdBSLLKbqqPgsu-GicT9DvFlS92oEhqWIPZP0iSEzp1DNNNwmLJ4GydTn032Pix31267CNzR1jBcK_42bwKcCgJbXAXMyAdeWWpFiyjBDC4HmYBvVouXYKXSYF9SO-ShPfK1YyZT_KlNhMLb6DmPIgeR6viQQ7XVh-Hsiptzg6tZuUdH9CPFPheSbCjWhvT5BGM9SxvAI8ue7FGKBUF700iapM-pWIf-7SAru0rZ5am81xdyRbw7oRfmkpo6qKH_tpmVAxHpmvm_QJus5oHnZRUQ_O5Dxa2GcnVq4V9fQuhx7r553VcgKbp3kqOMbwiANq7aiOftc0Pv3bmL1pfoQW9-TceRGLF2_t66iyd7EiUzIR53guQsXn_SdSd2XyNsH5Wk2VnEHTGErtR04ltq0qzB4cwJRH-oyVYzOqZdMy24YW9Y9dUn0PdHg-MgWv60u_6ZHjYB7Gw8gC_V7San05IdWNMr7ZObyIxMCwvYDT-6UQ16ibI8YZ1HZpLRU7tEq1pGZMFOQtPU_I8t5RUhtKzfmke7TwJbxWBkI7VeVN2zvhciLzCuky62zrSLGpN9pXX5G_7oReShYlOf5qO4huQZ9mFtIAuM1gkUAaUL7-EflDmGRXnFtrjTbTnf-8P1eh1sDcJa2ShpZFHiQTM';
      var url = Uri.parse("https://cms-api.dexbytes.in/api/birthday/list");
      var response = await http.get(url,headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $Token',
      }
      );
      // var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      // var response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
        var data2 = json.decode(response.body);
        print(data2);
        var mydataMy = data2['data'];
        print(mydataMy);
      //  birthdayList = BirthdayList.fromJson(data2);
        //print(birthdayList);

      }
    } catch (e) {
      print(e.toString());
    }
   }

  Future<BirthdayList> fetchData() async {
    String Token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjU5YmUxNGZkNzYzZDQyMGYwNzljNjNjZWZhZmMyYzJhNjhhYzFkZjBiNzEwZGI5ZDA4OGUzM2U5ZmQzNWEyNzZmMjIwNzNjOGViYjcxNDUiLCJpYXQiOjE3MTMyNDM5MTYuNjU5MjkzLCJuYmYiOjE3MTMyNDM5MTYuNjU5MzA3LCJleHAiOjE3NDQ3Nzk5MTYuNjUzOTgxLCJzdWIiOiI0MyIsInNjb3BlcyI6WyJNZW1iZXIiXX0.K_iskSFJLZbOY4rpiFUOEcZNAdBSLLKbqqPgsu-GicT9DvFlS92oEhqWIPZP0iSEzp1DNNNwmLJ4GydTn032Pix31267CNzR1jBcK_42bwKcCgJbXAXMyAdeWWpFiyjBDC4HmYBvVouXYKXSYF9SO-ShPfK1YyZT_KlNhMLb6DmPIgeR6viQQ7XVh-Hsiptzg6tZuUdH9CPFPheSbCjWhvT5BGM9SxvAI8ue7FGKBUF700iapM-pWIf-7SAru0rZ5am81xdyRbw7oRfmkpo6qKH_tpmVAxHpmvm_QJus5oHnZRUQ_O5Dxa2GcnVq4V9fQuhx7r553VcgKbp3kqOMbwiANq7aiOftc0Pv3bmL1pfoQW9-TceRGLF2_t66iyd7EiUzIR53guQsXn_SdSd2XyNsH5Wk2VnEHTGErtR04ltq0qzB4cwJRH-oyVYzOqZdMy24YW9Y9dUn0PdHg-MgWv60u_6ZHjYB7Gw8gC_V7San05IdWNMr7ZObyIxMCwvYDT-6UQ16ibI8YZ1HZpLRU7tEq1pGZMFOQtPU_I8t5RUhtKzfmke7TwJbxWBkI7VeVN2zvhciLzCuky62zrSLGpN9pXX5G_7oReShYlOf5qO4huQZ9mFtIAuM1gkUAaUL7-EflDmGRXnFtrjTbTnf-8P1eh1sDcJa2ShpZFHiQTM';

    // Replace this URL with your API endpoint
    var url = Uri.parse("https://cms-api.dexbytes.in/api/birthday/list");
    var response = await http.get(url,headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $Token',
    }
    );
    try{
      if (response.statusCode == 200) {
        // var data = json.decode(response.body);
        // final data = json.decode(response.body) as List<dynamic>;
        //List<Data> model = List<Data>.
        //from(json.decode(response.body).map((x) => Data.fromJson(x)));
        //print(response.body);
        // return model;
        // return data.map((json) => Data.fromJson(json)).toList();
        //return data.map((json) => Data.fromJson(json)).toList();
        return BirthdayList.fromJson(jsonDecode(response.body));
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load data');
      }
    }catch (e){
      throw Exception('$e');
    }
  }
  Future<UserDaata?> getPostData(String name, job) async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      var response = await http.post(url,body: {
        'name' : name, 'job' : job
      });
      if (response.statusCode == 201) {
        print(response.body);
        var data = jsonDecode(response.body);
        print(data);
        return UserDaata.fromJson(data) ;
      } else {
        throw Exception('Failed to create album.');
      }
      return null;
    } catch (e) {
      print(e);
    }
    // Future<Welcome?> createAlbum(String namecon,jobCon) async {
    //   final response = await http.post(
    //     Uri.parse('https://reqres.in/api/users'),
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     },
    //     body: jsonEncode(<String, String>{
    //       'name': namecon,
    //       'job' : jobCon
    //     }),
    //   );
    //   var data = response.body;
    //   print(data);
    //   if (response.statusCode == 201) {
    //     // If the server did return a 201 CREATED response,
    //     // then parse the JSON.
    //   //  return String.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    //     String responsetring = response.body;
    //     print(responsetring);
    //
    //   } else {
    //     // If the server did not return a 201 CREATED response,
    //     // then throw an exception.
    //     throw Exception('Failed to create album.');
    //   }
    //   return null;
    // }

  }
  Future<UserDaata?> putData(String name, job) async {
    try {
      var url = Uri.parse("https://reqres.in/api/users/2");
      var response = await http.post(url,body: {
        'name' : name, 'job' : job
      });
      if (response.statusCode == 201) {

        print(response.body);

        var data = jsonDecode(response.body);
        print(data);
      //  return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
       // return UserDaata.fromJson(data) ;
      } else {

        throw Exception('Failed to create album.');
      }
      return null;
    } catch (e) {
      print(e);
    }
    // Future<Welcome?> createAlbum(String namecon,jobCon) async {
    //   final response = await http.post(
    //     Uri.parse('https://reqres.in/api/users'),
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     },
    //     body: jsonEncode(<String, String>{
    //       'name': namecon,
    //       'job' : jobCon
    //     }),
    //   );
    //   var data = response.body;
    //   print(data);
    //   if (response.statusCode == 201) {
    //     // If the server did return a 201 CREATED response,
    //     // then parse the JSON.
    //   //  return String.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    //     String responsetring = response.body;
    //     print(responsetring);
    //
    //   } else {
    //     // If the server did not return a 201 CREATED response,
    //     // then throw an exception.
    //     throw Exception('Failed to create album.');
    //   }
    //   return null;
    // }

  }
  Future<Album> updateAlbum(String title) async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to update album.');
    }
  }
  Future<Album> fetchAlbum() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}



