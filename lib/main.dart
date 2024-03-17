import 'package:ai_chatbot_new/screens/AccountLoginScreen/account_login_screen.dart';
import 'package:ai_chatbot_new/screens/UpgradeToProScreen/SelectPaymentMethodScreen/select_payment_method_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectPaymentMethodScreen(),
    );
  }
}
