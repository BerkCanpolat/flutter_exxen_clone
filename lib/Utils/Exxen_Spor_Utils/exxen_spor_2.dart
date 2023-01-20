import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';

class Exxen_Spor_2 extends StatefulWidget {
  const Exxen_Spor_2({super.key});

  @override
  State<Exxen_Spor_2> createState() => _Exxen_Spor_2State();
}

class _Exxen_Spor_2State extends State<Exxen_Spor_2> {

  Future<List<Exxenspor2>> exxenSporL() async {
    var exxenlistSpor = <Exxenspor2>[];

    var exs1 = Exxenspor2("exxenspor.webp", "Kaka - Tüm Şampiyonlar Ligi Golleri","kategori","grup","tarih");
    var exs2 = Exxenspor2("eto.webp", "Samuel Eto'o - Tüm Şampiyonlar Ligi Golleri","kategori","grup","tarih");
    var exs3 = Exxenspor2("hernan.webp", "Hernan Crespo - Tüm Şampiyonlar Ligi Golleri","kategori","grup","tarih");
    var exs4 = Exxenspor2("rooney.webp", "Wayne Rooney - Tüm Şampiyonlar Ligi Golleri", "kategori", "grup", "tarih");
    var exs5 = Exxenspor2("mariogomez.webp", "Mario Gomez - Tüm Şampiyonlar Ligi Golleri", "kategori", "grup", "tarih");

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
        builder: (context,snapshot){
          if(snapshot.hasData){
            var exxenlistSpor = snapshot.data;

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: exxenlistSpor!.length,
              itemBuilder: (context,index){
                var exS2 = exxenlistSpor[index];

                return Column(
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets2/${exS2.exxen_spor2_resim}"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 295,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            exS2.exxen_spor2_sporadi,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              );
          }else{
            return Center();
          }
        }
        ),
    );
  }
}