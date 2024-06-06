
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'employe_model.dart';

class ApiIntegrate{

  /// for model using
  Future <EmployeModel>fetchData() async{
    var url = Uri.parse('https://dummy.restapiexample.com/api/v1/employees');
    var response = await http.get(url);
    try{
      if(response.statusCode == 200){
        print(response.body);
        var data = json.decode(response.body);
        var data1 = jsonDecode(response.body);
        print(data);
       String str = data['status'];
       print(str);
       String MSG = data1['message'];
       print(MSG);
        return EmployeModel.fromJson(jsonDecode(response.body));
      }else{
        throw Exception('Failed to load data');
      }
    }
catch(e){
      throw Exception('$e');
   //   print(e);
}
  }
  /// for model list using
 Future <List<Data>>fetchData1() async{
    var url = Uri.parse('https://dummy.restapiexample.com/api/v1/employees');
    var response = await http.get(url);
    try{
      if(response.statusCode == 200){
        print(response.body);
        List<Data> model = List<Data>.from(
            json.decode(response.body)['data'].map((x) => Data.fromJson(x)));
        return  model;
        // return List<Data>.
        // from(json.decode(response.body)['data'].map((x) => Data.fromJson(x)));
      }else{
        throw Exception('Failed to load data');
      }
    }
catch(e){
      throw Exception('$e');
   //   print(e);
}
  }
}


/*
Future<List<Data>?> fetchData() async {
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
      dynamic data = jsonDecode(response.body);
      List<Data>? listData = [];

      if (data['data'] != null) {
        listData = <Data>[];
        data['data'].forEach((v) {
          listData!.add(Data.fromJson(v));
        });
      }
      return List<Data>.from(
          data['data'].map((x) => Data.fromJson(x)));
      //return (data['data'] != null) ? List.generate(data['data'].length, (index) => Data.fromJson(data['data'][index])) : [];
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load data');
    }
  }catch (e){
    throw Exception('$e');
  }
}*/
/*
Future<List<Data>?> fetchData() async {
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
      dynamic data = jsonDecode(response.body);
      List<Data>? listData = [];

      if (data['data'] != null) {
        listData = <Data>[];
        data['data'].forEach((v) {
          listData!.add(Data.fromJson(v));
        });
      }
      return List.generate(data['data'].length, (index) => Data.fromJson(data['data']));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load data');
    }
  }catch (e){
    throw Exception('$e');
  }
}*/
/*
Future<List<Data>?> fetchData() async {
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
      dynamic data = jsonDecode(response.body);
      List<Data>? listData = [];

      if (data['data'] != null) {
        listData = <Data>[];
        data['data'].forEach((v) {
          listData!.add(Data.fromJson(v));
        });
      }
      BirthdayList? bitthdayList = BirthdayList.fromJson(jsonDecode(response.body));
      return bitthdayList.data;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load data');
    }
  }catch (e){
    throw Exception('$e');
  }
}*/
// Future<List<Data>?> fetchData() async {
//   String Token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjU5YmUxNGZkNzYzZDQyMGYwNzljNjNjZWZhZmMyYzJhNjhhYzFkZjBiNzEwZGI5ZDA4OGUzM2U5ZmQzNWEyNzZmMjIwNzNjOGViYjcxNDUiLCJpYXQiOjE3MTMyNDM5MTYuNjU5MjkzLCJuYmYiOjE3MTMyNDM5MTYuNjU5MzA3LCJleHAiOjE3NDQ3Nzk5MTYuNjUzOTgxLCJzdWIiOiI0MyIsInNjb3BlcyI6WyJNZW1iZXIiXX0.K_iskSFJLZbOY4rpiFUOEcZNAdBSLLKbqqPgsu-GicT9DvFlS92oEhqWIPZP0iSEzp1DNNNwmLJ4GydTn032Pix31267CNzR1jBcK_42bwKcCgJbXAXMyAdeWWpFiyjBDC4HmYBvVouXYKXSYF9SO-ShPfK1YyZT_KlNhMLb6DmPIgeR6viQQ7XVh-Hsiptzg6tZuUdH9CPFPheSbCjWhvT5BGM9SxvAI8ue7FGKBUF700iapM-pWIf-7SAru0rZ5am81xdyRbw7oRfmkpo6qKH_tpmVAxHpmvm_QJus5oHnZRUQ_O5Dxa2GcnVq4V9fQuhx7r553VcgKbp3kqOMbwiANq7aiOftc0Pv3bmL1pfoQW9-TceRGLF2_t66iyd7EiUzIR53guQsXn_SdSd2XyNsH5Wk2VnEHTGErtR04ltq0qzB4cwJRH-oyVYzOqZdMy24YW9Y9dUn0PdHg-MgWv60u_6ZHjYB7Gw8gC_V7San05IdWNMr7ZObyIxMCwvYDT-6UQ16ibI8YZ1HZpLRU7tEq1pGZMFOQtPU_I8t5RUhtKzfmke7TwJbxWBkI7VeVN2zvhciLzCuky62zrSLGpN9pXX5G_7oReShYlOf5qO4huQZ9mFtIAuM1gkUAaUL7-EflDmGRXnFtrjTbTnf-8P1eh1sDcJa2ShpZFHiQTM';
//
//   // Replace this URL with your API endpoint
//   var url = Uri.parse("https://cms-api.dexbytes.in/api/birthday/list");
//   var response = await http.get(url,headers: {
//     'Content-Type': 'application/json',
//     'Accept': 'application/json',
//     'Authorization': 'Bearer $Token',
//   }
//   );
//   try{
//     if (response.statusCode == 200) {
//       // var data = json.decode(response.body);
//       // final data = json.decode(response.body) as List<dynamic>;
//       //List<Data> model = List<Data>.
//       //from(json.decode(response.body).map((x) => Data.fromJson(x)));
//       //print(response.body);
//       // return model;
//       // return data.map((json) => Data.fromJson(json)).toList();
//       //return data.map((json) => Data.fromJson(json)).toList();
//       BirthdayList? bitthday = BirthdayList.fromJson(jsonDecode(response.body));
//       return BirthdayList.fromJson(jsonDecode(response.body)).data;
//     } else {
//       // If that call was not successful, throw an error.
//       throw Exception('Failed to load data');
//     }
//   }catch (e){
//     throw Exception('$e');
//   }
// }


// from model
/*
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
}*/
