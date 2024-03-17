import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:ai_chatbot_new/widgets/custom_button.dart';
import 'package:ai_chatbot_new/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class UpgradeToProScreen extends StatefulWidget {
  const UpgradeToProScreen({super.key});

  @override
  State<UpgradeToProScreen> createState() => _UpgradeToProScreenState();
}

class _UpgradeToProScreenState extends State<UpgradeToProScreen> {
  List<Map> planData = [
    {
      'planType': 'Starter plan',
      'upgradeAmount': 'Free',
      // 'planFeature': [
      //   '✓ Ad-supported experience',
      //   '✓ Access to starter chatbot features',
      //   '✓ Limited chat history storage',
      //   'Your Current plan',
      // ],
      'planFeature1': '✓ Ad-supported experience',
      'planFeature2': '✓ Access to starter chatbot features',
      'planFeature3': '✓ Limited chat history storage',
      'selectedPlan': false,
    },
    {
      'planType': 'Basic plan',
      'upgradeAmount': '\$4.99',
      'planFeature1': '✓ Ad-supported experience',
      'planFeature2': '✓ Access to starter chatbot features',
      'planFeature3': '✓ Limited chat history storage',
      'selectedPlan': true,
    },
    {
      'planType': 'Plus plan',
      'upgradeAmount': '\$9.99',
      'planFeature1': '✓ Ad-supported experience',
      'planFeature2': '✓ Access to starter chatbot features',
      'planFeature3': '✓ Limited chat history storage',
      'selectedPlan': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "Upgrade To Pro!"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Eita custom kora lagbo
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: planData.length,
                itemBuilder: (context, index) {
                  final plan = planData[index];
                  return Padding(
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
                                  text: plan['planType'], fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  customBoldText(
                                      text: plan['upgradeAmount'],
                                      fontSize: 40),
                                  plan['selectedPlan'] == true
                                      ? const Text(
                                          "/month",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: customDivider(),
                            ),
                            customBoldText(
                              text: plan['planFeature'],
                              fontWeight: FontWeight.w400,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: customDivider(),
                            ),
                            Center(
                              child: plan['selectedPlan'] == false
                                  ? customBoldText(
                                      text: "Your Current plan",
                                      fontSize: 20,
                                      color:
                                          AppColors.textColor.withOpacity(.5),
                                    )
                                  : const CustomButton(
                                      primaryDesign: true,
                                      text: "Select Plan",
                                      pushTo: null,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
