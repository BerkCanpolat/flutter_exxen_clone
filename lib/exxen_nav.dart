import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/exxen_hesabim.dart';
import 'package:flutter_exxen_clone/exxen_homepage.dart';
import 'package:flutter_exxen_clone/exxen_indirilenler.dart';
import 'package:flutter_exxen_clone/exxen_kim_izliyor.dart';
import 'package:flutter_exxen_clone/exxen_listpage.dart';
import 'package:flutter_exxen_clone/exxen_login.dart';
import 'package:flutter_exxen_clone/exxen_sporpage.dart';

class ExxenNav extends StatefulWidget {
  const ExxenNav({super.key});

  @override
  State<ExxenNav> createState() => _ExxenNavState();
}

class _ExxenNavState extends State<ExxenNav> {

  var sayfaList = [ExxenHomePage(),Exxen_Spor_Page(),Exxen_List_Page(),Exxen_Indirilenler_Page(),Exxen_Hesabim_Page()];
  int selectIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: sayfaList[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xfffbd929),
        unselectedItemColor: Colors.white,
        unselectedFontSize: 12,
        selectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Anasayfa",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stadium_outlined),
            label: "Spor",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_outlined),
            label: "Listem",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download_outlined),
            label: "İndirdiklerim",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Hesabım",
            ),
        ],
        currentIndex: selectIndex,
        onTap: (veri){
          setState(() {
            selectIndex = veri;
          });
        },
      ),
    );
  }
}