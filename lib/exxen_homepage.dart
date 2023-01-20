import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_alti.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_bes.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_dort.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_iki.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_sekiz.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_uc.dart';
import 'package:flutter_exxen_clone/Utils/exxen_home_giris_yedi.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';
import 'package:flutter_exxen_clone/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



// DEVELOPER: Berk Canpolat







class ExxenHomePage extends StatefulWidget {
  const ExxenHomePage({super.key});

  @override
  State<ExxenHomePage> createState() => _ExxenHomePageState();
}

class _ExxenHomePageState extends State<ExxenHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Center(
          child: SizedBox(
            height: 50,
            child: Image.asset("assets/exxenlogo.png"),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.video_collection_outlined),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Exxen_Giris(),
              Padding(
                padding: const EdgeInsets.only(left: 5,bottom: 2),
                child: Text(
                  "Öne Çıkanlar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
              ),
                  Exxen_Giris_2(),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,bottom: 2),
                    child: Text(
                      "Diziler",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Exxen_Giris_3(),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,bottom: 2),
                    child: Text(
                      "Reality",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Exxen_Giris_4(),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,bottom: 2),
                    child: Text(
                      "Belgeseller",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Exxen_Giris_5(),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,bottom: 2),
                    child: Text(
                      "Fenomenler",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Exxen_Giris_6(),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,bottom: 2),
                    child: Text(
                      "Yaşam",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Exxen_Giris_7(),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,bottom: 2),
                    child: Text(
                      "Çocuklar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Exxen_Giris_8(),
                  SizedBox(height: 30,),
            ],
          ),
      ),
    );
  }
}