import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';
import 'package:flutter_exxen_clone/exxen_detay.dart';

class Exxen_Giris_2 extends StatefulWidget {
  const Exxen_Giris_2({super.key});

  @override
  State<Exxen_Giris_2> createState() => _Exxen_Giris_2State();
}

class _Exxen_Giris_2State extends State<Exxen_Giris_2> {

  Future<List<ExxenGiris0>> exxengiris2() async {
    var exxengirisEleman1 = <ExxenGiris0>[];

    var o1 = ExxenGiris0("exxen1.jpg", "Gibi", "boş");
    var o2 = ExxenGiris0("exxen2.jpg", "Leyla İle Mecnun", "boş");
    var o3 = ExxenGiris0("exxen3.jpg", "Sadece Arkadaşız", "boş");
    var o4 = ExxenGiris0("exxengiris1.jpeg", "Konuşanlar", "boş");
    var o5 = ExxenGiris0("exxen6.webp", "Stand-Up Evreni", "boş");
    var o6 = ExxenGiris0("exxen7.webp", "Ölüm Zamanı", "boş");
    var o7 = ExxenGiris0("exxen8.webp", "Hükümsüz", "boş");
    var o8 = ExxenGiris0("exxen9.webp", "Türkiyedeki Seri Katiller", "boş");

    exxengirisEleman1.add(o1);
    exxengirisEleman1.add(o2);
    exxengirisEleman1.add(o3);
    exxengirisEleman1.add(o4);
    exxengirisEleman1.add(o5);
    exxengirisEleman1.add(o6);
    exxengirisEleman1.add(o7);
    exxengirisEleman1.add(o8);

    return exxengirisEleman1;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: FutureBuilder(
        future: exxengiris2(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var exxengirisEleman1 = snapshot.data;

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: exxengirisEleman1!.length,
              itemBuilder: (context,index){
                var ex2 = exxengirisEleman1[index];

                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exxen_Detay(diziDetay: ex2,)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 135,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/${ex2.exxen_giris_resim}"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          width: 130,
                          child: Text(ex2.exxen_giris_diziadi,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          
                        ),
                      ],
                    ),
                  ),
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















// SizedBox(
//       height: 250,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: benimAdim.length,
//           itemBuilder: (context, index) {
//             var zort = benimAdim[index];

//             return Padding(
//               padding: const EdgeInsets.all(5.0),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 200,
//                     width: 135,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(zort),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );