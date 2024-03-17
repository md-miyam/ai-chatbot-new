import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

Column customDesignText({
  // required BuildContext context,
  required String text,
  required bool isBold,
}) {
  return Column(
    children: [
      isBold == true
          ? Padding(
              padding: const EdgeInsets.only(
                top: 25,
              ),
              child: Text(
                text,
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                text,
                style: TextStyle(
                  color: AppColors.textColor.withOpacity(.8),
                  fontSize: 18,
                ),
              ),
            ),
    ],
  );
}
