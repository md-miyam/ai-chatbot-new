import 'package:ai_chatbot_new/screens/HomeScreen/home_screen.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_divider.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, leading: Icons.close),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.star,
                        size: 35,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ),
                ),
                Center(
                    child:
                        customBoldText(text: "Congratulations!", fontSize: 25)),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "You've successfully upgraded to basic Plain!",
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                customDivider(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: customBoldText(
                        text: "Benefits Unlocked :", fontSize: 20),
                  ),
                ),
                customBoldText(
                    text: "✓ Ad-free experience", fontWeight: FontWeight.w400),
                const SizedBox(
                  height: 5,
                ),
                customBoldText(
                    text: "✓ Access to starter chatbot features",
                    fontWeight: FontWeight.w400),
                const SizedBox(
                  height: 5,
                ),
                customBoldText(
                    text: "✓ Limited chat history storage",
                    fontWeight: FontWeight.w400),
                const SizedBox(
                  height: 5,
                ),
                customBoldText(
                    text: "✓ Priority custom support",
                    fontWeight: FontWeight.w400),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: customDivider(),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Enjoy the enhanced Chatify experience and make the most of subscription.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Center(
                    child: customBoldText(
                        text: "Thank you for choosing Chatify!",
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "OK",
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
