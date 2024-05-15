import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi_day_2/app/routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      initState: (_){
        Timer(const Duration(seconds: 3), () {
          Get.offAllNamed(Routes.LOGIN_SCREEN);
        });
      },
      builder: (context){
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 87, 193, 216),
          body: Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(image: AssetImage("assets/images/buku.png")),
                  Text("By Rizky Ahsan Syarif - 1B", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),)
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
