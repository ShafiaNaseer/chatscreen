import 'package:flutter/material.dart';

const myGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xff0D181E), Color(0xff819099)],);

Color receiveMessageColor = Color(0xff1F2C34);
Color sentMessageColor = Color(0xff005D4B);
Color ContainerColor = Color(0xffF26122);


myCircular (){
  return  const CircleAvatar(
    backgroundImage: NetworkImage("https://i.pinimg.com/236x/66/60/1e/66601e8b22323ec0f8f5f824d3fab917.jpg",
    ),
    maxRadius: 25,
  );
}