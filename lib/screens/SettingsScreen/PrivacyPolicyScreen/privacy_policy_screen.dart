import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../TermsOfUsScreen/widgets/custom_design_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "PrivacyPolicy"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Privacy Policy for Chatify",
                style: const TextStyle(
                    color: AppColors.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Effective Date: December 20, 2023",
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 18,
                ),
              ),
              customDesignText(text: "1. Introduction",isBold: true),
              customDesignText(text: "Welcome to Chatify! This Privacy Policy outlines our practices concerning the collection, use, and protection of your personal information when you use our application. By using Chatify, you agree to the terms and practices described in this Privacy Policy.",isBold: false),
              customDesignText(text: "2. Information We Collect",isBold: true),
              customDesignText(text: "2.1. Personal Information:\nWe may collect personal information, such as your name, email address, and payment details, when you create an account, make purchases, or contact our support team.",isBold: false),
              customDesignText(text: "2.2. Usage Data:\nWe collect information about how you interact with Chatify, including your chat history, messages, and interactions with our chatbot.",isBold: false),
              customDesignText(text: "2.3. Usage Data:\nWe collect information about how you interact with Chatify, including your chat history, messages, and interactions with our chatbot.",isBold: false),
              customDesignText(text: "2.4. Usage Data:\nWe collect information about how you interact with Chatify, including your chat history, messages, and interactions with our chatbot.",isBold: false),
              customDesignText(text: "2.5. Usage Data:\nWe collect information about how you interact with Chatify, including your chat history, messages, and interactions with our chatbot.",isBold: false),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
