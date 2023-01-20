import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/exxen_homepage.dart';
import 'package:flutter_exxen_clone/exxen_nav.dart';

class Kullanici extends StatelessWidget {

final String kullaniciFoto;
final String kullaniciIsim;

Kullanici({required this.kullaniciFoto,required this.kullaniciIsim});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ExxenNav()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 35,bottom: 10,top: 9),
        child: Row(
          children: [
            SizedBox(
              height: 95,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(kullaniciFoto),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text(
              kullaniciIsim.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
