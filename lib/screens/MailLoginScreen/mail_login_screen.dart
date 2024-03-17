import 'package:ai_chatbot_new/screens/CreateAnAccountScreen/create_an_account_screen.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:ai_chatbot_new/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/sign_up_text.dart';
import '../EmailForgotPasswordScreen/email_forgot_password.dart';
import '../HomeScreen/home_screen.dart';

class MailLoginScreen extends StatefulWidget {
  const MailLoginScreen({super.key});

  @override
  State<MailLoginScreen> createState() => _MailLoginScreenState();
}

class _MailLoginScreenState extends State<MailLoginScreen> {
  bool _obscureText = true;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Welcome back text
                          customBoldText(text: "Welcome back 👋", fontSize: 32),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Please enter your email & password to sign in.",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    // TextField
                    const CustomTextField(
                      text: "Email",
                      hintText: "Email",
                      prefixIcon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),

                    CustomTextField(
                      text: "Password",
                      hintText: "Password",
                      prefixIcon: Icons.lock,
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      obscureText: _obscureText,
                    ),

                    // Text Remember me & Forgot password?
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                activeColor: AppColors.primaryColor,
                                hoverColor: AppColors.primaryColor,
                                onChanged: (newBool) {
                                  setState(() {
                                    isChecked = newBool;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: customBoldText(
                                    text: "Remember me", fontSize: 16),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const EmailForgotPassword(),
                              ));
                            },
                            child: customBoldText(
                                text: "Forgot password?",
                                fontSize: 16,
                                color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                    ),

                    // Divider
                    customDivider(),

                    // Sing up button
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: SignUpText(
                        blacktext: "Don't have an account?",
                        greentext: "Sign up",
                        nextscreen: CreateAnAccount(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Log in",
                    pushTo: HomeScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
