import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'api_class.dart';
import 'employe_model.dart';

class EmployeScreen extends StatefulWidget {
  const EmployeScreen({super.key});

  @override
  State<EmployeScreen> createState() => _EmployeScreenState();
}

class _EmployeScreenState extends State<EmployeScreen> {
  @override
  void initState() {
   // ApiIntegrate().fetchData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Data>>(
        future: ApiIntegrate().fetchData1(),
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot){
          return ListView.builder(
            itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Card(child: ListTile(
                    title: Text('${ snapshot.data?[index].employeeName! ?? ""}'),
                        subtitle: Text('${snapshot.data?[index].employeeAge}' ?? ""),
                ),);
              },
          );
        },
      ),
    );
  }
}
