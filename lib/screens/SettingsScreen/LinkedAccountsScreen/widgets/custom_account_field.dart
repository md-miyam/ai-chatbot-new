import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAccountField extends StatelessWidget {
  final String account;
  final String logo;

  const CustomAccountField(
      {super.key, required this.account, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.greyColor.withOpacity(0.1),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset(logo),
            ),
            title: Text(
              account,
              style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "Connected",
              style: TextStyle(
                  fontSize: 15,
                  color: AppColors.textColor.withOpacity(.5),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
