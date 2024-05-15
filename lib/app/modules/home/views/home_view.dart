import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi_day_2/app/modules/login_screen/views/login_screen_view.dart';
import 'package:sertifikasi_day_2/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF596275),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Koleksiku Punyaku", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),),
              IconButton(onPressed: () => Get.offAllNamed(Routes.LOGIN_SCREEN), icon: const Icon(Icons.exit_to_app, color: Colors.white,))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 35,
              width: double.infinity,
              color: const Color(0xFFFD79A8),
            ),
            Center(
              child: Text("BISANYA GINI AJA KAK :)", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.amber)),),
            )
          ],
        ),
      )
    );
  }
}
