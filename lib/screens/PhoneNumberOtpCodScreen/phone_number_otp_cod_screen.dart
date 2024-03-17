import 'package:ai_chatbot_new/screens/PhoneNumberOtpCodScreen/widgets/phone_cod_field.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../WelcomeChatifyScreen/welcome_chatify_screen.dart';

class PhoneNumberOtpCodScreen extends StatefulWidget {
  const PhoneNumberOtpCodScreen({super.key});

  @override
  State<PhoneNumberOtpCodScreen> createState() =>
      _PhoneNumberOtpCodScreenState();
}

class _PhoneNumberOtpCodScreenState extends State<PhoneNumberOtpCodScreen> {
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 12,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Positioned(
                            left: 75,
                            child: Container(
                              height: 12,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    customBoldText(
                        text: "Verify phone number 📲", fontSize: 30),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Enter the code that we have sent to the number ending in +99",
                      style:
                          TextStyle(fontSize: 17, color: AppColors.greyColor),
                    ),

                    // CodField
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PhoneCodField(),
                          PhoneCodField(),
                          PhoneCodField(),
                          PhoneCodField(),
                        ],
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            customBoldText(
                                text: "Didn't receive code?",
                                fontWeight: FontWeight.normal),
                            const SizedBox(
                              height: 15,
                            ),
                            // RichText
                            RichText(
                              text: const TextSpan(
                                text: "You can resend code in",
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 18,
                                ),
                                children: [
                                  TextSpan(
                                    text: " 48 ",
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 's',
                                    style: TextStyle(
                                      color: AppColors.textColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Custom button
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Continue",
                    pushTo: WelcomeChatifyScreen(),
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
