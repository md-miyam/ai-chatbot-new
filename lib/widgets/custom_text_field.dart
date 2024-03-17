import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String text;
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool? enabled;

  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled,
    required this.obscureText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customBoldText(text: text, color: AppColors.textColor, fontSize: 20),
          const SizedBox(
            height: 8,
          ),
          // TextField
          TextField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            enabled: enabled,
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.grey,
              ),
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.grey[150],
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
