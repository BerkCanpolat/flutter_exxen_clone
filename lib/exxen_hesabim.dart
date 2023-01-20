import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/exxen_login.dart';

class Exxen_Hesabim_Page extends StatefulWidget {
  const Exxen_Hesabim_Page({super.key});

  @override
  State<Exxen_Hesabim_Page> createState() => _Exxen_Hesabim_PageState();
}

class _Exxen_Hesabim_PageState extends State<Exxen_Hesabim_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      appBar: AppBar(
        title: Text("Hesabım"),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Profilim",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                      // borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    "assets/profil1.png",
                                    width: 50,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Profilim",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Berk",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 219, 217, 217),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Profil Değiştir",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Hesap Bilgilerim",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "E-Posta",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "admin19@gmail.com",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Telefon No",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "+905554443322",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Ad Soyad",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "Berk Canpolat",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Şifre",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "*********",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Üyelik Bilgilerim",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abonelik Durumu",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "Aktif - Abonelik",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Paket",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "EXXENSPOR",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Abonelik Planı",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "Sezonluk Paket",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abonelik Durumu",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "Aktif",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Paket",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "REKLAMSIZ",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Abonelik Planı",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "Sezonluk Paket",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Ayarlar",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text(
                              "İndirme Ayarları",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Text(
                            "Yetişkin Kontrolleri",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 7),
                          Text(
                            "Kapalı",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 217, 217),
                            fontSize: 16,
                            ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text(
                              "Yardım",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text(
                              "Bize Ulaşın",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          SizedBox(height: 7),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text(
                              "SSS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text(
                              "Uygulama Hakkında",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ExxenGiris()));
                              },
                              child: Text(
                                "Çıkış Yap",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text(
                              "admin19@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
