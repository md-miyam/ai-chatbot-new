import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomListTile extends StatelessWidget {
  final IconData? leading;
  final String title;
  final Widget? trailing;
  final Color? leadingColor;
  final Color? titleColor;
  final Color? trailingColor;
  final dynamic onTap;
  final bool? trailingArrow;

  const CustomListTile({
    super.key,
    this.leading,
    required this.title,
    this.trailing,
    this.leadingColor,
    this.titleColor,
    this.trailingColor,
    this.onTap,
    this.trailingArrow,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => onTap,
          ),
        );
      },
      leading: Icon(
        leading,
        color: leadingColor ?? AppColors.textColor,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: titleColor ?? AppColors.textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      trailing: trailingArrow == true
          ? Icon(
              Icons.arrow_forward_ios_sharp,
              color: trailingColor ?? AppColors.textColor,
            )
          : trailing,
    );
  }
}
