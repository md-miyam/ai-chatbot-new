import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../PhoneNumberOtpCodScreen/phone_number_otp_cod_screen.dart';

class VerifyHumanScreen extends StatefulWidget {
  const VerifyHumanScreen({super.key});

  @override
  State<VerifyHumanScreen> createState() => _VerifyHumanScreenState();
}

class _VerifyHumanScreenState extends State<VerifyHumanScreen> {
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
                            left: 70,
                            child: Container(
                              height: 12,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    customBoldText(text: "Verify you're human ✅", fontSize: 30),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please solve this captcha so we know you are a person.",
                      style:
                          TextStyle(fontSize: 17, color: AppColors.greyColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.greyColor.withOpacity(.1),
                              width: 2.5),
                        ),
                        child: Row(
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
                            customBoldText(
                                text: "I'm not a robot", fontSize: 16)
                          ],
                        ),
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
                    pushTo: PhoneNumberOtpCodScreen(),
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
