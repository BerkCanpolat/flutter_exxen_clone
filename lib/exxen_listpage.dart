import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_ListPage_Utils/exxen_izlemelistem.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_ListPage_Utils/exxen_izlemeyedevamet.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_ListPage_Utils/exxen_listpage_class.dart';
import 'package:flutter_exxen_clone/exxen_homepage.dart';
import 'package:flutter_exxen_clone/exxen_sporpage.dart';

class Exxen_List_Page extends StatefulWidget {
  const Exxen_List_Page({super.key});

  @override
  State<Exxen_List_Page> createState() => _Exxen_List_PageState();
}

class _Exxen_List_PageState extends State<Exxen_List_Page> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
        appBar: AppBar(
          title: Column(
            children: [
              Text("Listelerim"),
              Divider(
                height: 30,
                thickness: 1,
                color: Colors.grey,
              ),
            ],
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.white,
            tabs: [
              Tab(text: "İzlemeye Devam et",),
              Tab(text: "İzleme Listem",),
            ],
          ),
        ),
        body: Column(
          children: [
              Expanded(
                child: TabBarView(
                  children: [
                    Exxen_Izlemeye_Devam_et(),
                    Exxen_Izleme_Listem(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}