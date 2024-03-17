import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_bold_text.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_divider.dart';
import '../CongratulationsScreen/congratulations_screen.dart';

class ReviewSummaryScreen extends StatelessWidget {
  const ReviewSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "Review Summary"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.borderColor,
                      ),
                      color: AppColors.secondaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: customBoldText(
                                text: "Basic plan", fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                customBoldText(text: "\$4.99", fontSize: 40),
                                const Text(
                                  "/month",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: customDivider(),
                          ),
                          customBoldText(
                            text: "✓ Ad-supported experience",
                            fontWeight: FontWeight.w400,
                          ),
                          customBoldText(
                            text: "✓ Access to starter chatbot features",
                            fontWeight: FontWeight.w400,
                          ),
                          customBoldText(
                            text: "✓ Limited chat history storage",
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: customBoldText(
                      text: "Selected Payment Method", fontSize: 20),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.borderColor),
                  ),
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
                                'assets/icons/apple.png',
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Apple Pay",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textColor),
                            ),
                          ],
                        ),
                        customBoldText(
                            text: "Change",
                            color: AppColors.primaryColor,
                            fontSize: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Custom button
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Confirm Payment - \$4.99",
                    pushTo: CongratulationsScreen(),
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
