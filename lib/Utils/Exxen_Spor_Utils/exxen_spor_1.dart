import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';

class Exxen_Spor_1 extends StatefulWidget {
  const Exxen_Spor_1({super.key});

  @override
  State<Exxen_Spor_1> createState() => _Exxen_Spor_1State();
}

class _Exxen_Spor_1State extends State<Exxen_Spor_1> {
  Future<List<ExxenSpor1>> exxenSpor1() async {
    var exxensporEleman = <ExxenSpor1>[];

    var s1 = ExxenSpor1("sampiyonlarligiefsane.webp", "Şampiyonlar Ligi Efsaneleri",
        "Şampiyonlar Ligi", "Hemen İzle");
    var s2 = ExxenSpor1(
        "feneravrupa.jpg", "Fenerbahçe Grup Maçları", "Avrupa Ligi", "Hemen İzle");
    var s3 = ExxenSpor1("trabzonavrupa.jpg", "Trabzonspor Grup Maçları",
        "Avrupa Ligi", "Hemen İzle");
    var s4 = ExxenSpor1("basaksehiravrupa.jpg", "Başakşehir Grup Maçları", "Konferans Ligi", "Hemen İzle");
    var s5 = ExxenSpor1("sivassporavrupa.jpg", "Sivasspor Grup Maçları", "Konferans Ligi", "Hemen İzle");

    exxensporEleman.add(s1);
    exxensporEleman.add(s2);
    exxensporEleman.add(s3);
    exxensporEleman.add(s4);
    exxensporEleman.add(s5);

    return exxensporEleman;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      child: FutureBuilder(
          future: exxenSpor1(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var exxensporEleman = snapshot.data;

              return PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: exxensporEleman!.length,
                  itemBuilder: (context, index) {
                    var exS = exxensporEleman[index];

                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 500,
                              width: 411,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets2/${exS.exxen_spor_resim}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    exS.exxen_spor_macadi,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 2,
                                          offset: Offset(1.0, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      exS.exxen_spor_mackategori,
                                      style: TextStyle(
                                        color: Colors.grey[200],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 2,
                                            offset: Offset(2.0, 2.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: SizedBox(
                                      height: 40,
                                      width: 180,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          exS.exxen_spor_button,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.amber,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
