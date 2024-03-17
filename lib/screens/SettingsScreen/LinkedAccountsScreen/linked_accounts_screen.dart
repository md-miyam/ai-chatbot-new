import 'package:ai_chatbot_new/screens/SettingsScreen/LinkedAccountsScreen/widgets/custom_account_field.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class LinkedAccountsScreen extends StatefulWidget {
  const LinkedAccountsScreen({super.key});

  @override
  State<LinkedAccountsScreen> createState() => _LinkedAccountsState();
}

class _LinkedAccountsState extends State<LinkedAccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // AppBar
      appBar: customAppBar(context: context, title: "Linked Accounts"),
      // Body
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            CustomAccountField(
                account: "Google", logo: "assets/icons/google.png"),
            CustomAccountField(
                account: "Apple", logo: "assets/icons/apple.png"),
            CustomAccountField(
                account: "Facebook", logo: "assets/icons/facebook.png"),
            CustomAccountField(
                account: "Twitter", logo: "assets/icons/twitter.png"),
          ],
        ),
      ),
    );
  }
}
