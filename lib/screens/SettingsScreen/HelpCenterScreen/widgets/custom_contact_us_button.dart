import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/custom_bold_text.dart';

class CustomContactUsButton extends StatelessWidget {
  final String leading;
  final String title;

  const CustomContactUsButton(
      {super.key, required this.leading, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            children: [
              SizedBox(
                height: 25,
                width: 40,
                child: Image.asset(
                  leading,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              customBoldText(text: title)
            ],
          ),
        ),
      ),
    );
  }
}
