import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi_day_2/app/modules/home/views/home_view.dart';
import 'package:sertifikasi_day_2/app/modules/login_screen/views/login_screen_view.dart';

import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  RegisterScreenView({super.key});

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final registerController = RegisterScreenController();
    return Form(
      key: registerFormKey,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 87, 193, 216),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Header
                  Text("Register", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 45, fontWeight: FontWeight.w500, color: Colors.white)),),
                  const SizedBox(height: 8,),
                  Text("Welcome new user,", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, color: Colors.white))),
                  const SizedBox(height: 8,),
                  Text("Please create your account here", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, color: Colors.white))),
                  const SizedBox(height: 20,),
          
                  // Username
                  TextFormField(
                    controller: registerController.username,
                    decoration: InputDecoration(
                      labelText: "Username",
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
                  const SizedBox(height: 32,),
          
                  // Email
                  TextFormField(
                    controller: registerController.email,
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
                  const SizedBox(height: 32,),
          
                  // Password
                  Obx(
                    () => TextFormField(
                      controller: registerController.password,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: registerController.hidePassword.value,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),
                        fillColor: const Color(0xFFF6F6F6),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => registerController.hidePassword.value = !registerController.hidePassword.value, 
                          icon: Icon(registerController.hidePassword.value ? FluentIcons.eye_off_20_regular : FluentIcons.eye_20_regular),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 32,),
          
                  // Confirm Password
                  Obx(
                    () => TextFormField(
                      controller: registerController.confirmPassword,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: registerController.hidePassword.value,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),
                        fillColor: const Color(0xFFF6F6F6),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => registerController.hidePassword.value = !registerController.hidePassword.value, 
                          icon: Icon(registerController.hidePassword.value ? FluentIcons.eye_off_20_regular : FluentIcons.eye_20_regular),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 24,),

                  // Register Button
                  ElevatedButton(
                    onPressed: () => Get.to(() => const HomeView()),
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
                          Text("Register", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white))),
                          const Icon(FluentIcons.arrow_right_48_regular, size: 48, color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80,),

                  // Back to Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Already have an account?", style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),),
                      TextButton(
                    onPressed: () => Get.to(() => LoginScreenView()), 
                    child: Text("Login", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16, color: Colors.white)),)
                  ),
                    ],
                  )
          
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
