import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:ai_chatbot_new/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class AboutChatifyScreen extends StatefulWidget {
  const AboutChatifyScreen({super.key});

  @override
  State<AboutChatifyScreen> createState() => _AboutChatifyScreenState();
}

class _AboutChatifyScreenState extends State<AboutChatifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "About Chatify"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(
              'assets/icons/applogo.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: customBoldText(text: "Chatify v12.5.6", fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: customDivider(),
          ),
          ListTile(
            leading: customBoldText(text: "Partner"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: customBoldText(text: "Job Vacancy"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: customBoldText(text: "Accessibility"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: customBoldText(text: "Feedback"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: customBoldText(text: "Rate us"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: customBoldText(text: "Visit Our Website"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: customBoldText(text: "Follow us on Social Media"),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.textColor,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
