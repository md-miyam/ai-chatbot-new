import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_divider.dart';
import '../ReviewSummaryScreen/review_summary_screen.dart';

class SelectPaymentMethodScreen extends StatefulWidget {
  const SelectPaymentMethodScreen({super.key});

  @override
  State<SelectPaymentMethodScreen> createState() =>
      _SelectPaymentMethodScreenState();
}

class _SelectPaymentMethodScreenState extends State<SelectPaymentMethodScreen> {
  List paymentMethod = [
    {
      'methodIcon': 'PayPal',
      'image': 'assets/icons/paypal.png',
    },
    {
      'methodIcon': 'Google Pay',
      'image': 'assets/icons/google.png',
    },
    {
      'methodIcon': 'Apple Pay',
      'image': 'assets/icons/apple.png',
    },
    {
      'methodIcon': '... ... ... 4625',
      'image': 'assets/icons/visa.png',
    },
  ];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
          context: context,
          title: "Select Payment MethodScreen",
          actions: Icons.add),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: paymentMethod.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: currentIndex != index
                                    ? AppColors.borderColor
                                    : AppColors.primaryColor)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Image.asset(
                                      paymentMethod[index]['image'],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    paymentMethod[index]['methodIcon'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.textColor),
                                  ),
                                ],
                              ),
                              currentIndex != index
                                  ? const SizedBox()
                                  : const Icon(
                                      Icons.done,
                                      color: AppColors.primaryColor,
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Custom button
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Continue",
                    pushTo: ReviewSummaryScreen(),
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
