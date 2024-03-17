import 'package:ai_chatbot_new/screens/AccountLoginScreen/widgets/login_widget.dart';
import 'package:ai_chatbot_new/screens/MailLoginScreen/mail_login_screen.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/sign_up_text.dart';
import '../CreateAnAccountScreen/create_an_account_screen.dart';

class AccountLoginScreen extends StatelessWidget {
  const AccountLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // App logo
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/icons/applogo.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Text
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: customBoldText(text: "Chatify", fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Let's dive in into your account!",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.textColor.withOpacity(.5),
                      ),
                    ),
                  ),
                ],
              ),

              // LoginWidget button
              const Column(
                children: [
                  LoginWidget(
                      image: "assets/icons/google.png",
                      text: "Continue with Google"),
                  LoginWidget(
                      image: "assets/icons/apple.png",
                      text: 'Continue with Apple'),
                  LoginWidget(
                      image: "assets/icons/facebook.png",
                      text: "Continue with Facebook"),
                  LoginWidget(
                      image: "assets/icons/twitter.png",
                      text: "Continue with Twitter"),
                ],
              ),

              // Log in button
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Login Button
                  CustomButton(
                    primaryDesign: true,
                    text: "Log in",
                    pushTo: MailLoginScreen(),
                  ),
                  // Sing up button
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: SignUpText(
                      blacktext: "Don't have an account?",
                      greentext: "Sign up",
                      nextscreen: CreateAnAccount(),
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
