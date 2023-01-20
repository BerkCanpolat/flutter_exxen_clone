import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_Spor_Utils/exxen_spor_1.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_Spor_Utils/exxen_spor_2.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_Spor_Utils/exxen_spor_3.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_Spor_Utils/exxen_spor_4.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_Spor_Utils/exxen_spor_5.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_Spor_Utils/exxen_spor_6.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';

class Exxen_Spor_Page extends StatefulWidget {
  const Exxen_Spor_Page({super.key});

  @override
  State<Exxen_Spor_Page> createState() => _Exxen_Spor_PageState();
}

class _Exxen_Spor_PageState extends State<Exxen_Spor_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset("assets/exxenlogo.png", width: 90,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Exxen_Spor_1(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 6),
                  child: Text(
                    "Şampiyonlar Ligi Efsaneleri",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 6, right: 5),
                  child: Text(
                    "Hepsini Gör",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Exxen_Spor_2(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 6),
                  child: Text(
                    "Programlar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 6, right: 5),
                  child: Text(
                    "Hepsini Gör",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Exxen_Spor_3(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 6),
                    child: Container(
                      width: 240,
                      child: Text(
                        "Avrupa & Konferans Ligi Maç Özetleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 6, right: 5),
                    child: Text(
                      "Hepsini Gör",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Exxen_Spor_4(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 6),
                    child: Container(
                      width: 240,
                      child: Text(
                        "Avrupa & Konferans Ligi Maç Özetleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 6, right: 5),
                    child: Text(
                      "Hepsini Gör",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Exxen_Spor_5(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 6),
                    child: Container(
                      width: 240,
                      child: Text(
                        "Kupalar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Exxen_Spor_6(),
          ],
        ),
      ),
    );
  }
}


