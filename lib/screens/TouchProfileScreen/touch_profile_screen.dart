import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_text_field.dart';
import '../VerifyHumanScreen/verify_human_screen.dart';

class TouchProfileScreen extends StatefulWidget {
  const TouchProfileScreen({super.key});

  @override
  State<TouchProfileScreen> createState() => _TouchProfileScreenState();
}

class _TouchProfileScreenState extends State<TouchProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 12,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Positioned(
                            left: 75,
                            child: Container(
                              height: 12,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    customBoldText(text: "Touch your profile 👤", fontSize: 30),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Add a touch to your profile. Don't worry, your data will be stored safely. Your phone number may be required for sign up verification.",
                      style:
                          TextStyle(fontSize: 17, color: AppColors.greyColor),
                    ),

                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                const AssetImage("assets/images/profile.png"),
                            backgroundColor:
                                AppColors.greyColor.withOpacity(.3),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 90,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.edit,
                                    size: 18,
                                    color: AppColors.backgroundColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // TextField

                    const CustomTextField(
                      text: "Full Name",
                      hintText: "Full Name",
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const CustomTextField(
                      text: "Phone Number",
                      hintText: "+1",
                      prefixIcon: Icons.add_card,
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                    ),
                    const CustomTextField(
                      text: "Date of Birth",
                      hintText: "Date of Birth",
                      enabled: false,
                      suffixIcon: Icon(Icons.calendar_month),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
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
                    text: "Continue",
                    pushTo: VerifyHumanScreen(),
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
