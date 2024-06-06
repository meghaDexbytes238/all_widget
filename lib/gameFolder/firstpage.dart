import 'package:allwidgetpractise/gameFolder/homescreen.dart';
import 'package:allwidgetpractise/gameFolder/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstScreenGame extends StatefulWidget {
  const FirstScreenGame({super.key});
  @override
  State<FirstScreenGame> createState() => _FirstScreenGameState();
}

class _FirstScreenGameState extends State<FirstScreenGame> {
  int number = 0;
  bool valid = false;
  final GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              // onChanged: (num) => print(' this is my num $num')
              key: formkey,
              child: WidgetFile.buildTextField(
                hintText: 'Please Enter Number', control: textFieldController ,onChanged: (value){
                print('value is $value');
                number = int.parse(value);
                print("textfield number : $number");
              },
              ),
              /* child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: textFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Enter member Number',
                  errorText: valid ? "Please Enter Number" : null,
                ),
                onChanged: (value) {
                  number = int.parse(value);
                 // print("Enter Number : $number");
                },
              ),*/
            ),
            SizedBox(
              height: 50,
            ),
            WidgetFile.buildButton(
              text: "Next",
              onPressed: () {
                formkey.currentState!.validate();
                setState(() {
                  if (textFieldController.text.isEmpty) {
                    valid = true;
                  }
                  else if (number % 2 == 0) {
                    print("my number $number");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen_StartGame(boxCount: number),
                        )
                    );
                  }
                  else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Please Enter Even Number'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Ok',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                          )
                        ],
                      ),
                    );
                  }
                });
              },),
            /* ElevatedButton(
                onPressed: () {
                  formkey.currentState!.validate();
                 // print("get number is : $number");
                  setState(() {
                    if (textFieldController.text.isEmpty) {
                      valid = true;
                    }
                    else if (number % 2 == 0) {
                    //  print("my number $number");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen_StartGame(boxCount: number,),
                          ));
                    }
                    else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Please Enter Even Number'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ))
                          ],
                        ),
                      );
                    }
                  });

//else if(textFieldController.text.isEmpty){
//
//
//   valid = true;
//
// }
//
// else{
//   showDialog(context: context, builder: (context) => AlertDialog(
//     title: Text('Please Enter Even Number'),
//     actions: [TextButton(onPressed: (){
//       Navigator.pop(context);
//     }, child: Text('Ok',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),))],
//   ),);
// }
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                )),*/
          ],
        ),
      ),
    );
  }
}
