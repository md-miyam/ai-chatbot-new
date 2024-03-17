import 'package:ai_chatbot_new/screens/EmailOtpCodScreen/widgets/email_cod_field.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../CreateNewPasswordScreen/create_new_password_screen.dart';

class EmailOtpCodScreen extends StatelessWidget {
  const EmailOtpCodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // OTP code verification
                    customBoldText(
                        text: "OTP code verification 🔐", fontSize: 30),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "We have sent an OTP cod to yor email and *******ley@yourdomain.com. Enter the OTP cod below to verify.",
                      style:
                          TextStyle(fontSize: 17, color: AppColors.greyColor),
                    ),

                    // EmailCodField
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EmailCodField(),
                          EmailCodField(),
                          EmailCodField(),
                          EmailCodField(),
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't receive email?",
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You can resend code in",
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                " 52 ",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                's',
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // CustomButton
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Continue",
                    pushTo: CreateNewPasswordScreen(),
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
