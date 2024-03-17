import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_divider.dart';
import 'package:ai_chatbot_new/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/sign_up_text.dart';
import '../CheckEmailScreen/check_email_screen.dart';

class CreateAnAccount extends StatefulWidget {
  const CreateAnAccount({super.key});

  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  bool _obscureText = true;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customBoldText(
                        text: "Create an account 👩‍💻", fontSize: 30),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "We will send a verification link to the email you entered.",
                      style:
                          TextStyle(fontSize: 17, color: AppColors.greyColor),
                    ),
                    // TextField
                    const CustomTextField(
                        text: "Email",
                        hintText: "Email",
                        prefixIcon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false),
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
                    const SizedBox(
                      height: 10,
                    ),
                    // Text Remember me & Forgot password?
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

                        // RichText
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              text: "I agree to Chatify ",
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: "Terms of Use ",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: '& ',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: '.',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // The Divider
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: customDivider(),
                    ),
                    // Sing up button
                    const SignUpText(
                      blacktext: "Already have an account?",
                      greentext: "Sign up",
                      nextscreen: null,
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
                    text: "Sign up",
                    pushTo: CheckEmailScreen(),
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
