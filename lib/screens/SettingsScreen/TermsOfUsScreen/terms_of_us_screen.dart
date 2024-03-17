import 'package:ai_chatbot_new/screens/SettingsScreen/TermsOfUsScreen/widgets/custom_design_text.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';

class TermsOfUsScreen extends StatelessWidget {
  const TermsOfUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "Terms Of Us"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customBoldText(text: "Terms Of Use for Chatify", fontSize: 20),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Effective Data: December 15, 2023",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 18,
                ),
              ),
              customDesignText(text: "1. Acceptance of Terms", isBold: true),
              customDesignText(
                  text:
                      "By using Chatify, you agree to comply with these Terms of Use. If you do not agree with any part of these, please do not use our application",
                  isBold: false),
              customDesignText(text: "2. User Accounts", isBold: true),
              customDesignText(
                  text:
                      "You are responsible for maintaining the confidentiality of your account credentials and ensuring that your account information is accurate. You must be at least [age] years old to use Chatify.",
                  isBold: false),
              customDesignText(text: "3. User Conduct", isBold: true),
              customDesignText(
                  text:
                      "You agree not to use Chatify for any unlawful or prohibited purpose. You agree not to engage in any activity that may interfere with or disrupt the proper functioning of Chatify. You agree not to impersonate others or use false information.",
                  isBold: false),
              customDesignText(
                  text: "4. Content and Intellectual Property", isBold: true),
              customDesignText(
                  text:
                      "You agree not to use Chatify for any unlawful or prohibited purpose. You agree not to engage in any activity that may interfere with or disrupt the proper functioning of Chatify. You agree not to impersonate others or use false information.",
                  isBold: false),
              customDesignText(
                  text: "5. Content and Intellectual Property", isBold: true),
              customDesignText(
                  text:
                      "You agree not to use Chatify for any unlawful or prohibited purpose. You agree not to engage in any activity that may interfere with or disrupt the proper functioning of Chatify. You agree not to impersonate others or use false information.",
                  isBold: false),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
