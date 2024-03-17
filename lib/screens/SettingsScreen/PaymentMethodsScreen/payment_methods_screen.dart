import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';
import '../LinkedAccountsScreen/widgets/custom_account_field.dart';
import 'AddNewPaymentScreen/add_new_payment_screen.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // AppBar
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 28,
            color: AppColors.iconColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: customBoldText(text: "Payment Methods", fontSize: 25),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 28,
              color: AppColors.iconColor,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNewPaymentScreen(),
                  ));
            },
          ),
        ],
      ),

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
