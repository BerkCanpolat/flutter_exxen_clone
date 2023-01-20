import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/Exxen_ListPage_Utils/exxen_listpage_class.dart';

class Exxen_Izleme_Listem extends StatefulWidget {
  const Exxen_Izleme_Listem({super.key});

  @override
  State<Exxen_Izleme_Listem> createState() => _Exxen_Izleme_ListemState();
}

class _Exxen_Izleme_ListemState extends State<Exxen_Izleme_Listem> {
  Future<List<ExxenListClass1>> ExxenclassList() async {
    var exxenListem = <ExxenListClass1>[];

    var l1 = ExxenListClass1("arda.jpg", "Arda");

    exxenListem.add(l1);

    return exxenListem;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: FutureBuilder(
          future: ExxenclassList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var exxenListem = snapshot.data;

              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3.3,
                  ),
                  itemCount: exxenListem!.length,
                  itemBuilder: (context, index) {
                    var exlP = exxenListem[index];

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 192,
                            height: 265,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/${exlP.list_resim}"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 6, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(181, 0, 0, 0),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(minutes: 5),
                                          content: SizedBox(
                                            height: 145,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Katarsis",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .hideCurrentSnackBar();
                                                      },
                                                      icon: Icon(
                                                        Icons.cancel_outlined,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "Kafanızı Çevirdiğiniz Her olay için, görmezden geldiğiniz her hayat için, kendinize fark etmediğiniz her duygu için, vicdanınızın sesini açar mısını? Uzman Psikolog Gökhan Çınar, Katarsiz e Katarsis XTRA'da konuklarına farklı bir açıdan yaklaşıyor.",
                                                  style: TextStyle(
                                                    color: Colors.grey[200],
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            width: 200,
                            child: Text(
                              exlP.list_diziadi,
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            } else {
              return Center();
            }
          }),
    );
  }
}
