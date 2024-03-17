import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_bold_text.dart';

class LoginWidget extends StatelessWidget {
  final String image;
  final String text;

  const LoginWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.secondaryColor,
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              SizedBox(height: 35, width: 35, child: Image.asset(image)),
              const SizedBox(
                width: 50,
              ),
              // text
              customBoldText(text: text),
            ],
          ),
        ),
      ),
    );
  }
}
