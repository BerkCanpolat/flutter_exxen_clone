import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';

class Exxen_Spor_5 extends StatefulWidget {
  const Exxen_Spor_5({super.key});

  @override
  State<Exxen_Spor_5> createState() => _Exxen_Spor_5State();
}

class _Exxen_Spor_5State extends State<Exxen_Spor_5> {
  Future<List<Exxenspor2>> exxenSporL() async {
    var exxenlistSpor = <Exxenspor2>[];

    var exs1 = Exxenspor2(
        "samp1.webp",
        "Shaktar Donetsk - Leipzig",
        "Şampiyonlar Ligi",
        "Şampiyonlar Ligi | F Grubu | 6.Hafta",
        "02.11.2022 - 20:45");
    var exs2 = Exxenspor2(
        "samp2.webp",
        "Real Madrid - Celtic",
        "Avrupa Ligi",
        "Şampiyonlar Ligi | F Grubu | 6.Hafta",
        "02.11.2022 - 20:45");
    var exs3 = Exxenspor2(
        "samp3.webp",
        "Juventus - PSG",
        "Avrupa Ligi",
        "Şampiyonlar Ligi | H Grubu | 6.Hafta",
        "02.11.2022 - 23:00");
    var exs4 = Exxenspor2(
        "samp4.webp",
        "Chelsea - Dinamo Zagreb",
        "Avrupa Ligi",
        "Şampiyonlar Ligi | E Grubu | 6.Hafta",
        "02.11.2022 - 23:00");
    var exs5 = Exxenspor2(
        "samp5.webp",
        "Milan - Salzburg",
        "Avrupa Ligi",
        "Şampiyonlar Ligi | E Grubu | 6.Hafta",
        "02.11.2022 - 23:00");

    exxenlistSpor.add(exs1);
    exxenlistSpor.add(exs2);
    exxenlistSpor.add(exs3);
    exxenlistSpor.add(exs4);
    exxenlistSpor.add(exs5);

    return exxenlistSpor;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: FutureBuilder(
          future: exxenSporL(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var exxenlistSpor = snapshot.data;

              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: exxenlistSpor!.length,
                  itemBuilder: (context, index) {
                    var exS2 = exxenlistSpor[index];

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets2/${exS2.exxen_spor2_resim}"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 295,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  exS2.exxen_spor2_grup,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    exS2.exxen_spor2_sporadi,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    exS2.exxen_spor2_tarih,
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
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
