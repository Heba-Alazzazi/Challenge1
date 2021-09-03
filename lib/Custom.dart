import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTextField(
    {required IconData preIcon,
    required String Lable,
    Color color = Colors.grey}) {
  return Container(
    padding: const EdgeInsets.only(top: 10, right: 20, left: 20),

    //decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.blue[)]),
    // decoration: BoxDecoration(
    //     // borderRadius: BorderRadius.circular(30),
    //     // color: Colors.white,
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey,
    //         offset: Offset(0.0, 1.0), //(x,y)
    //         blurRadius: 6.0,
    //       ),
    //     ]),
    child: Card(
      elevation: 20,
      shadowColor: Colors.grey[50],
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: color, fontSize: 14),
          focusColor: Colors.blue,
          hintText: Lable,

          prefixIcon: Icon(preIcon),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Colors.blue, style: BorderStyle.solid, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),

          //focusedBorder: InputBorder(borderSide: BorderRadius.circular(20))
        ),
      ),
    ),
  );
}

Widget CustomButton({
  required String name,
  required Function()? onpressed,
}) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      //padding: const EdgeInsets.all(30),
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // color: Colors.blue[900],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.all(Colors.blue[900])),
      ),
    ),
  );
}
