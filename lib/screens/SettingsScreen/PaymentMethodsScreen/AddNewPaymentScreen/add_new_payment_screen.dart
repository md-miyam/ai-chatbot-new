import 'package:ai_chatbot_new/screens/SettingsScreen/PaymentMethodsScreen/AddNewPaymentScreen/widgets/add_new_text_field.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:ai_chatbot_new/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/custom_divider.dart';

class AddNewPaymentScreen extends StatefulWidget {
  const AddNewPaymentScreen({super.key});

  @override
  State<AddNewPaymentScreen> createState() => _AddNewPaymentState();
}

class _AddNewPaymentState extends State<AddNewPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 28,
            color: AppColors.iconColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: customBoldText(text: "Add New Payment", fontSize: 25),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner,
              size: 28,
              color: AppColors.iconColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddNewTextField(
                        text: "Card Number",
                        hintText: "Enter your Card Number",
                        keyboardType: TextInputType.number),
                    const AddNewTextField(
                        text: "Account Holder Name",
                        hintText: "Enter your Account Holder Name",
                        keyboardType: TextInputType.multiline),
                    const Row(
                      children: [
                        Expanded(
                            child: AddNewTextField(
                                text: "Expiry Date",
                                hintText: "Expiry Date",
                                keyboardType: TextInputType.multiline)),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: AddNewTextField(
                              text: "CVV",
                              hintText: "CVV",
                              keyboardType: TextInputType.multiline),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: customDivider(),
                    ),
                    customBoldText(text: "Supported Payments :", fontSize: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              "assets/icons/visa.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              "assets/icons/amazon.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              "assets/icons/paypal.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              "assets/icons/apple.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Save",
                    pushTo: null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
