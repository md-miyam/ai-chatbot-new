import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool primaryDesign;
  final String text;
  final pushTo;

  const CustomButton({
    super.key,
    required this.primaryDesign,
    required this.text,
    required this.pushTo,
  });

  @override
  Widget build(BuildContext context) {
    return primaryDesign == true
        ? InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => pushTo,
                ),
              );
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: AppColors.backgroundColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        : InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => pushTo,
              ));
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
  }
}
