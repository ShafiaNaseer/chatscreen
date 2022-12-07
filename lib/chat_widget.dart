import 'package:flutter/material.dart';

import 'constants.dart';


Widget RecieveMessage() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      myCircular(),
      Container(
        constraints: BoxConstraints(maxWidth: 200),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: receiveMessageColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: const Text(
          "Hello, I would like to meet you. Its functionality is to add sized constraints on its child widget.",
          style: TextStyle(color: Colors.white, height: 2),
        ),
      ),
      Text(
        "10:50 PM",
        style: TextStyle(color: Colors.grey[600]),
      )
    ],
  );
}

Widget SendMessage() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        "10:52 PM",
        style: TextStyle(color: Colors.grey[600]),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: sentMessageColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        constraints: BoxConstraints(maxWidth: 250),
        child: const Text(
          "Hello, I would like",
          style: TextStyle(color: Colors.white, height: 2),
        ),
      ),
    ],
  );
}

Widget WriteMessageField(){
  return Container(
    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
    color: const Color(0xff819099),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(17),
        filled: true,
        fillColor: Colors.white,
        hintText: "Write your message",
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Colors.transparent,
                width: 2
            )
        ),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Colors.transparent,
                width: 2
            )
        ),
        suffixIcon: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: sentMessageColor,
          ),
          margin: const EdgeInsets.only(right: 6),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.send_outlined, color: Colors.white,),),
        ),

      ),

    ),
  );
}
