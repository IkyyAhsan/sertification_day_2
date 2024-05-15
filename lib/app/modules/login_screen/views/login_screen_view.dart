import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi_day_2/app/modules/forget_password/views/forget_password_view.dart';
import 'package:sertifikasi_day_2/app/modules/home/views/home_view.dart';
import 'package:sertifikasi_day_2/app/modules/register_screen/views/register_screen_view.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  LoginScreenView({super.key});
  
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginController = LoginScreenController();
    return Form(
      key: loginController.loginFormKey,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 87, 193, 216),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 150),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Header
                  Text("Login", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.w500, color: Colors.white)),),
                  const SizedBox(height: 8,),
                  Text("Welcome back,", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, color: Colors.white))),
                  const SizedBox(height: 8,),
                  Text("Please login to your account", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, color: Colors.white))),
                  const SizedBox(height: 20,),

                  // Email
                  TextFormField(
                    controller: loginController.email,
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
                      controller: loginController.password,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: loginController.hidePassword.value,
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
                          onPressed: () => loginController.hidePassword.value = !loginController.hidePassword.value, 
                          icon: Icon(loginController.hidePassword.value ? FluentIcons.eye_off_20_regular : FluentIcons.eye_20_regular),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 48,),

                  // Login Button
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
                          Text("Login", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white))),
                          const Icon(FluentIcons.arrow_right_48_regular, size: 48, color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),

                  // Lupa Password
                  TextButton(
                    onPressed: () => Get.to(() => ForgetPasswordView()), 
                    child: Text("Forget the password?", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16, color: Colors.white)),)
                  ),
                  const SizedBox(height: 108,),

                  // Navigate to Register Screen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Don't have any account?", style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),),
                      TextButton(
                    onPressed: () => Get.to(() => RegisterScreenView()), 
                    child: Text("Register", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16, color: Colors.white)),)
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
