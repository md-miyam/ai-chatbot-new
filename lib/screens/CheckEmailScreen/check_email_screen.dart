import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_divider.dart';
import '../TouchProfileScreen/touch_profile_screen.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1.5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Center(
                                child: Icon(
                              Icons.email_outlined,
                              color: AppColors.iconColor,
                              size: 50,
                            )),
                          ),
                        ),
                      ),
                      Center(
                        child: customBoldText(
                            text: "Check Your Email", fontSize: 30),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Center(
                          child: Text(
                            "We have sent an email to and*******ley@yourdomain.com.\n Click the link inside to get started.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17,
                                color: AppColors.greyColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Resend email",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // CustomButton
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: false,
                    text: "I've verified my email",
                    pushTo: TouchProfileScreen(),
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
