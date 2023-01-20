import 'package:flutter/material.dart';
import 'package:flutter_exxen_clone/exxen_login.dart';
import 'package:flutter_exxen_clone/exxen_nav.dart';
import 'package:flutter_exxen_clone/videopdenememain.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExxenGiris(),
    );
  }
}
