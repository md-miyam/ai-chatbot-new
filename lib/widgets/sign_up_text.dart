import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  final String blacktext;
  final String greentext;
  final nextscreen;

  const SignUpText(
      {super.key,
      required this.blacktext,
      required this.greentext,
      required this.nextscreen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          blacktext,
          style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => nextscreen,
            ));
          },
          child: Text(
            greentext,
            style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
