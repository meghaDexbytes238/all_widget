
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../TextField/new_textformfield.dart';

abstract class WidgetFile{
  static Widget  buildTextField({required String hintText, required TextEditingController control ,void Function(String)? onChanged}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: control,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
        errorText: valid ? "Please Enter Number" : null,
      ),
      onChanged: onChanged,
      // onChanged: (value) {
      //   num = int.parse(value);
      //   print("num is   $num");
      //   if(onChanged != null)onChanged.call(num);
      // },
    );
  }

  static Widget  buildButton({ required String text ,required Function() onPressed , double? fontsize ,}) {
    return ElevatedButton(
        onPressed: onPressed,
        // () {
        //   formkey.currentState!.validate();
        //   // print("get number is : $number");
        //   setState(() {
        //     if (control.text.isEmpty) {
        //       valid = true;
        //     } else if (num! % 2 == 0) {
        //       //  print("my number $number");
        //       Navigator.push(
        //           contex,
        //           MaterialPageRoute(
        //             builder: (context) => HomeScreen_StartGame(boxCount: num,),
        //           ));
        //     }
        //     else {
        //       showDialog(
        //         context: contex,
        //         builder: (context) => AlertDialog(
        //           title: Text('Please Enter Even Number'),
        //           actions: [
        //             TextButton(
        //                 onPressed: () {
        //                   Navigator.pop(context);
        //                 },
        //                 child: Text(
        //                   'Ok',
        //                   style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.w800),
        //                 ))
        //           ],
        //         ),
        //       );
        //     }
        //   });
        // },
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize ?? 18, fontWeight: FontWeight.w800),
        )
    );
  }

  static Widget buildBox({String? text, required void Function()? onPressed, ButtonStyle? style, bool? buttonis = true}){
    return ElevatedButton(
      autofocus: true,
      style: style,
      /*ButtonStyle(
        side: MaterialStatePropertyAll(
            BorderSide(
                width: ((index == newList.indexOf(elementOfCheck) && (newList[index] ==  elementOfCheck)))? borderWidth : 0.0,
                color: Colors.blueAccent,
                strokeAlign: 3,
                style: BorderStyle.solid)),
        backgroundColor: MaterialStatePropertyAll(
          colorsMy[random.nextInt(colorsMy.length)],
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
        shadowColor: selectedCard == index ? MaterialStatePropertyAll(color) : MaterialStatePropertyAll(Colors.transparent),
        elevation: selectedCard == index ? MaterialStatePropertyAll(elevetionVar) : MaterialStatePropertyAll(0.0),
      )*/
      onPressed: onPressed,
      /*  ( buttonis == true) ? () {
        setState(() {
          // print(index);
          selectedCard = index;
          element = opecityForColor[random.nextInt(opecityForColor.length)];
          elevetionVar = 30.0;
          color = Colors.green;
          print("index ${index}");
          print("elementcehck $elementOfCheck");
          print("index of new  ${newList.indexOf(elementOfCheck)}");
          print("index ${index}");
          if((index == newList.indexOf(elementOfCheck) && (newList[index] ==  elementOfCheck)) || count <= howTime ){
            print('true');
            ForBorder = true;
            borderWidth = 5.0;
            index = index + 1;
            elementOfCheck = elementOfCheck + 1;
            print(' eleme $elementOfCheck');
            print("index of new  ${newList.indexOf(elementOfCheck)}");
            print("index ${index}");
            if(elementOfCheck > newList.length ){
              index = 0;
              elementOfCheck = 1;
            }
            count = count + 1;
          }
          if(count == howTime){
            showDialog(
              context: context,
              builder: (context) => AlertDialog(

                title: Text("the game is over"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstScreenGame(),
                            ));
                      },
                      child: Text('Restart')),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStatePropertyAll(Colors.red)),
                  ),
                ],
              ),
            );
          }
        });
        if (element == 0) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.all(0),
              titlePadding: EdgeInsets.zero,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.network('https://lottie.host/00ebae14-bf30-45f1-97de-1e65098e6d38/FegyoBqSaH.json',
                      alignment: Alignment(0, 100),
                      height: MediaQuery.of(context).size.height/2.5
                  ),
                  Text("Congratulations",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800)),
                  SizedBox(height: 10,),
                  Text('You are won!!',style: TextStyle(fontSize: 12),),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstScreenGame(),
                            ));
                      },
                      child: Text('Restart')),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStatePropertyAll(Colors.red)),
                  ),
                ],
              ),
            ),
          );
        }
      } : null,*/
      child: Text(text!),

    );
  }

  //textAlign: TextAlign.cente
  // static Widget buildText({required String data, TextAlign? textAlign, Function(FontWeight? fontWeight)? TextStyle }){
  //   return Text(data , textAlign: textAlign ?? TextAlign.center, style: TextStyle(FontWeight)  );
  // }

  static TextStyle TextStyleNew({Color? texColor,
    double? fontSize,
    fontFamily,
    fontWeight,}){
    return TextStyle(
      fontSize: fontSize ?? 25,
      fontWeight: fontWeight ?? FontWeight.w800,
      fontFamily: fontFamily,
    );
  }
  static Widget myText({required String data , double? fontsize,String? fontfamily, FontWeight? fontWeight , TextAlign? textAlign }){
    return Text(data ,textAlign: textAlign ,style: TextStyle(fontSize: fontsize, fontWeight:fontWeight , fontFamily: fontfamily, ), );
  }
  static Widget TextButtonBuild({required String data , required void Function()? onPressed}){
    return TextButton(onPressed: onPressed, child: Text(data),  );
  }

}


