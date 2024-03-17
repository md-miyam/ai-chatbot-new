import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../HomeScreen/home_screen.dart';

class WelcomeChatifyScreen extends StatelessWidget {
  const WelcomeChatifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        const AssetImage("assets/images/green.png"),
                    backgroundColor: AppColors.greyColor.withOpacity(.2),
                  ),
                ),
                customBoldText(text: "Welcome to Chatify!", fontSize: 30),
                customDivider(),
                // Text Column
                ListTile(
                  leading: const Icon(
                    Icons.search,
                    color: AppColors.primaryColor,
                    size: 40,
                  ),
                  title:
                      customBoldText(text: "Accuracy Disclaimer", fontSize: 20),
                  subtitle: customBoldText(
                      text:
                          "Chatify is may not always provide 100% accurate responses.",
                      fontSize: 15,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.normal),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.lock,
                    color: AppColors.primaryColor,
                    size: 40,
                  ),
                  title: customBoldText(text: "Privacy Reminder", fontSize: 20),
                  subtitle: customBoldText(
                      text:
                          "Avoid sharing sensitive or personal information in your conversations.",
                      fontSize: 15,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.normal),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.swap_horizontal_circle_outlined,
                    color: AppColors.primaryColor,
                    size: 40,
                  ),
                  title: customBoldText(
                      text: "Chat History Control", fontSize: 20),
                  subtitle: customBoldText(
                      text:
                          "You have the power to manage and delete your chat history within the app.",
                      fontSize: 15,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.normal),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.star_border_purple500_rounded,
                    color: AppColors.primaryColor,
                    size: 40,
                  ),
                  title: customBoldText(text: "Unlock More", fontSize: 20),
                  subtitle: customBoldText(
                      text:
                          "Explore Chatify pro for enhanced features and limitless possibilities.",
                      fontSize: 15,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.normal),
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
                    primaryDesign: true,
                    text: "Explore Chatify",
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
