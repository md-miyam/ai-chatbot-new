import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;

  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.grey.withOpacity(.3),
            ),
          ),
        ],
      ),
    );
  }
}
