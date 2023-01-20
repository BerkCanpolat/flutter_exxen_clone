import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exxen_clone/Utils/exxen_list_class.dart';

class Exxen_Detay extends StatefulWidget {

  ExxenGiris0 diziDetay;

  Exxen_Detay({required this.diziDetay});


  @override
  State<Exxen_Detay> createState() => _Exxen_DetayState();
}

class _Exxen_DetayState extends State<Exxen_Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/gibidetay2.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.3),
                      Colors.black,
                    ],
                    // stops: [0.0,1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.diziDetay.exxen_giris_diziadi,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 10),
              child: Text(
                "Komedi",
                style: TextStyle(
                  color: Colors.grey,
                ),
                ),
            ),
            SizedBox(
              width: 335,
              height: 37,
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text(
                  "İzlemeye Başla",
                  style: TextStyle(
                    color: Colors.black),
                    ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 43, 42, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.add,
                  size: 33,
                  color: Colors.amber,),
                  style: IconButton.styleFrom(
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 43, 42, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.share,
                  size: 29,
                  color: Colors.amber,),
                  style: IconButton.styleFrom(
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 43, 42, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.thumb_down_alt_outlined,
                  size: 33,
                  color: Colors.amber,),
                  style: IconButton.styleFrom(
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 43, 42, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.thumb_up_outlined,
                  size: 33,
                  color: Colors.amber,),
                  style: IconButton.styleFrom(
                  ),
                ),
              ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: 390,
              child: Text(
                "Yılmaz, İlkkan ve Ersoy.. Sürekli olarak birbirleriyle didişmekte olan üç arkadaş. En büyük özellikleri ise sıradan hayatlarını alt üst edecek bir şeyler yapmayı her zaman becermek. Küçücük olayları inanılmaz bir ustalıkla büyütüyor, işleri saç baş yolduracak seviyeye getiriyorlar. Onlar her gün yaşadığımız talihsizsiklerin, tuhaf olayların ve çaresizliklerin cisimleşmiş hali.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 7),
              child: Text(
                "Oyuncular",
                style: TextStyle(
                  color: Colors.grey,
                ),
                ),
            ),
            Text(
              "Feyyaz Yiğit, Kıvanç Kılınç, Ahmet Kürşat Öçalan",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sezon 3",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 18,
                      ),
                      ),
                    Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/gibidetay2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(211, 255, 193, 7),
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            child: Text(
                              "10. Bölüm - Birinci Kabak (23.12.22)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "35m",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 42, 42),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.download,color: Colors.amber,size: 34,),
                            ),
                          Icon(Icons.more_vert_rounded,color: Color.fromARGB(255, 104, 103, 103),),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/gibidetay2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(211, 255, 193, 7),
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            child: Text(
                              "10. Bölüm - Birinci Kabak (23.12.22)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "35m",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 42, 42),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.download,color: Colors.amber,size: 34,),
                            ),
                          Icon(Icons.more_vert_rounded,color: Color.fromARGB(255, 104, 103, 103),),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/gibidetay2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(211, 255, 193, 7),
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            child: Text(
                              "10. Bölüm - Birinci Kabak (23.12.22)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "35m",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 42, 42),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.download,color: Colors.amber,size: 34,),
                            ),
                          Icon(Icons.more_vert_rounded,color: Color.fromARGB(255, 104, 103, 103),),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/gibidetay2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(211, 255, 193, 7),
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            child: Text(
                              "10. Bölüm - Birinci Kabak (23.12.22)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "35m",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 42, 42),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.download,color: Colors.amber,size: 34,),
                            ),
                          Icon(Icons.more_vert_rounded,color: Color.fromARGB(255, 104, 103, 103),),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/gibidetay2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(211, 255, 193, 7),
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            child: Text(
                              "10. Bölüm - Birinci Kabak (23.12.22)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "35m",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 42, 42),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.download,color: Colors.amber,size: 34,),
                            ),
                          Icon(Icons.more_vert_rounded,color: Color.fromARGB(255, 104, 103, 103),),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/gibidetay2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(211, 255, 193, 7),
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            child: Text(
                              "10. Bölüm - Birinci Kabak (23.12.22)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "35m",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 42, 42),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.download,color: Colors.amber,size: 34,),
                            ),
                          Icon(Icons.more_vert_rounded,color: Color.fromARGB(255, 104, 103, 103),),
                        ],
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