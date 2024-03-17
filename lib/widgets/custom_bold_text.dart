import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

Text customBoldText({
  required String text,
  final Color? color,
  final double? fontSize,
  final FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
        color: color ?? AppColors.textColor,
        fontSize: fontSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.bold),
  );
}
