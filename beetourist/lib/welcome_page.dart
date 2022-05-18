import 'package:beetourist/anasayfa.dart';
import 'package:beetourist/login_page.dart';
import 'package:beetourist/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "img/plane1_blur.jpg"    //ARKAPLAN
                ),
                fit: BoxFit.cover
            )
        ),
        /* decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00eeff),
              Color(0xFF0099ff),
              Color(0xFF005eff),
              Color(0xFF00296b),  //aşağıdaki renk
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ), */
        child: Column(
          children: [
            SizedBox(
                width: w,
                height: h*0.3,
                /* decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "img/plane2.jpg"    //Login Ekrani üstteki fotograf
                        ),
                        fit: BoxFit.cover
                    )
                ), */
                child: Column(
                    children: [
                      SizedBox(height: h*0.096,), //avatar foto üzerindeki konumu
                      const CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 60,
                        backgroundImage: AssetImage(
                            "img/cartoon_bee.png"
                        ),
                      )
                    ]
                )
            ),
            SizedBox(height: 20,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Hoşgeldin",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "kullanici@gmail.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.8,
              height: h*0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/button_blur2.png"    //Login Ekrani üstteki fotograf
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>
                            Get.to(()=>LoginPage()), //ANASAYFA BURAYA GELECEK !!!
                        text: "Giriş Yap",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: w*0.8,
              height: h*0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/button_blur3.png"    //Login Ekrani üstteki fotograf
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>
                            Get.to(()=>SignUpPage()), //ANASAYFA BURAYA GELECEK !!!
                        text: "Kayıt Ol",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 100,),
            Container(
              width: w*0.8,
              height: h*0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/button2.png"    //Login Ekrani üstteki fotograf
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>
                            Get.to(()=>SignUpPage()), //ANASAYFA BURAYA GELECEK !!!
                        text: "BeeTourist >>>",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                        )
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
