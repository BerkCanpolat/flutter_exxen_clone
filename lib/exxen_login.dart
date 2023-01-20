import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_exxen_clone/exxen_kim_izliyor.dart';
import 'package:flutter_exxen_clone/exxen_nav.dart';
import 'package:flutter_exxen_clone/exxen_utils_login/exxen_gradient_one.dart';
import 'package:flutter_exxen_clone/exxen_utils_login/exxen_gradient_two.dart';

class ExxenGiris extends StatefulWidget {
  const ExxenGiris({super.key});

  @override
  State<ExxenGiris> createState() => _ExxenGirisState();
}

class _ExxenGirisState extends State<ExxenGiris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GradientOne(),
            GradientTwo(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 80,
                    child: Image.asset("assets/exxenlogo.png"),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          // hintText: "E-posta",
                          label: Text("E-posta"),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 29, 33, 54),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff1a1c29),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          // hintText: "Şifre",
                          label: Text("Şifre"),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 29, 33, 54),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff1a1c29),
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey,
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => KimIzliyor()));
                        },
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellowAccent[400],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 20),
                      child: Text(
                        "Şifremi Unuttum",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}