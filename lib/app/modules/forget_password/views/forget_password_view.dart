import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi_day_2/app/modules/login_screen/views/login_screen_view.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  ForgetPasswordView({super.key});

  
  final GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final forgetPasswordController = ForgetPasswordController();
    return Form(
      key: forgetPasswordFormKey,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 87, 193, 216),
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Reset\nPassword", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: Colors.white)),),
                  const SizedBox(height: 8,),
                  Text("Forget your password?", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, color: Colors.white))),
                  const SizedBox(height: 8,),
                  Text("Please create your new password", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, color: Colors.white))),
                  const SizedBox(height: 80,),

                  // Email
                  TextFormField(
                    controller: forgetPasswordController.email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),
                      fillColor: const Color(0xFFF6F6F6),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                    )
                  ),
                  const SizedBox(height: 100,),

                  // Confirm Button
                  ElevatedButton(
                    onPressed: () => Get.to(() => LoginScreenView()),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 68, 186, 255),
                      ),
                    ), 
                    child: Padding(padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Confirm", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white))),
                          const Icon(FluentIcons.arrow_right_48_regular, size: 48, color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        )
      )
      );
  }
}
