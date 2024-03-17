import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  required BuildContext context,
  final IconData? leading,
  String? title,
  final IconData? actions,
}) {
  return AppBar(
    backgroundColor: AppColors.backgroundColor,
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(
        leading ?? Icons.arrow_back,
        size: 28,
        color: AppColors.iconColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: title == null
        ? null
        : Text(
            title,
            style: const TextStyle(
                color: AppColors.textColor,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
    centerTitle: true,
    actions: [
      Icon(
        actions,
        size: 28,
        color: AppColors.iconColor,
      ),
    ],
  );
}
