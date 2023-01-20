import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Exxen_Indirilenler_Page extends StatefulWidget {
  const Exxen_Indirilenler_Page({super.key});

  @override
  State<Exxen_Indirilenler_Page> createState() => _Exxen_Indirilenler_PageState();
}

class _Exxen_Indirilenler_PageState extends State<Exxen_Indirilenler_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      appBar: AppBar(
        title: Text("İndirdiklerim"),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 225,
          child: Text(
            "Henüz indirilmiş hiç içeriğiniz bulunmuyor.",
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
            ),
          ),
      )
    );
  }
}