import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';
import 'package:flutter_exxen_clone/videopdenememain.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Exxen_Giris extends StatefulWidget {
  const Exxen_Giris({Key? key}) : super(key: key);



  @override
  State<Exxen_Giris> createState() => _Exxen_GirisState(); 
}

class _Exxen_GirisState extends State<Exxen_Giris> {

  Future<List<ExxenGiris0>> exxenGiris0() async{
    var exxengirisEleman = <ExxenGiris0>[];

    var g1 = ExxenGiris0("exxen1.jpg", "Gibi", "Hemen İzle");
    var g2 = ExxenGiris0("exxen2.jpg", "Leyla İle Mecnun", "Yeni Sezon");
    var g3 = ExxenGiris0("exxengiris1.jpeg", "Konuşanlar", "Hemen İzle");
    var g4 = ExxenGiris0("exxen3.jpg", "Sadece Arkadaşız", "Hemen İzle");
    var g5 = ExxenGiris0("exxen4.webp", "Sizi Dinliyorum", "Hemen İzle");
    var g6 = ExxenGiris0("exxen5.webp", "Tolgshow Filtresiz", "Hemen İzle");

    exxengirisEleman.add(g1);
    exxengirisEleman.add(g2);
    exxengirisEleman.add(g3);
    exxengirisEleman.add(g4);
    exxengirisEleman.add(g5);
    exxengirisEleman.add(g6);

    return exxengirisEleman;
  }
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      child: FutureBuilder(
        future: exxenGiris0(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var exxengirisEleman = snapshot.data;

            return PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: exxengirisEleman!.length,
            itemBuilder: (context, index) {
              var ex0 = exxengirisEleman[index];
      
              return GestureDetector(
                onTap: (){
                  
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 500,
                          width: 411,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/${ex0.exxen_giris_resim}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  ex0.exxen_giris_diziadi,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2,
                                        offset: Offset(3.0,3.0),
                                        color: Colors.black,
                                      ),
                                    ]
                                  ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 40,
                                    width: 180,
                                    child: ElevatedButton(
                                      onPressed: (){}, 
                                      child: Text(
                                        ex0.exxen_giris_button,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amber,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        )
                                      ),
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
            );

          }else {
            return Center();
          }
        },
      ),
    );
  }
}
