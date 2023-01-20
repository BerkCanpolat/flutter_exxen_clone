import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_exxen_clone/Utils/exxen_kim_izliyor_profil.dart';
import 'package:flutter_exxen_clone/exxen_login.dart';
import 'package:flutter_exxen_clone/exxen_nav.dart';

class KimIzliyor extends StatefulWidget {
  const KimIzliyor({super.key});

  @override
  State<KimIzliyor> createState() => _KimIzliyorState();
}

class _KimIzliyorState extends State<KimIzliyor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 18, 26),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: Image.asset("assets/exxenlogo.png"),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context, 
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.grey[900],
                          title: Text(
                            "Oturumu Kapat",
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                          content: Text(
                            "Oturumunu sonlandırmak istediğinize emin misiniz?",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              SizedBox(
                                width: 100,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ExxenGiris()));
                                    });
                                  }, 
                                  child: Text(
                                    "Tamam",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      backgroundColor: Colors.black,
                                    ),
                                  ),
                              ),
                              SizedBox(width: 30,),
                              SizedBox(
                                width: 100,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }, 
                                  child: Text(
                                    "İptal",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      backgroundColor: Colors.black,
                                    ),
                                  ),
                              ),
                                ],
                              )
                            ],
                        );
                      }
                      );
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Kim izliyor?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: 1,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Kullanici(
                      kullaniciFoto: "assets/profil1.png",
                      kullaniciIsim: "Berk",
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.grey,
                    ),
                    Kullanici(
                      kullaniciFoto: "assets/profil3.png",
                      kullaniciIsim: "Çiğdem",
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.grey,
                    ),
                    Kullanici(
                      kullaniciFoto: "assets/profil4.png",
                      kullaniciIsim: "Pınar",
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.grey,
                    ),
                    Kullanici(
                      kullaniciFoto: "assets/profil2.png",
                      kullaniciIsim: "Uğur",
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
