import 'package:ai_chatbot_new/screens/SettingsScreen/settings_screen.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_divider.dart';
import '../../../widgets/custom_text_field.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "Personal Info"),
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
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: const AssetImage(
                                "assets/images/ai.profile.png"),
                            backgroundColor:
                                AppColors.greyColor.withOpacity(.2),
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
                      text: 'Full Name',
                      hintText: 'Full Name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const CustomTextField(
                      text: 'Phone Number',
                      hintText: '+1',
                      prefixIcon: Icons.add_card,
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                    ),
                    const CustomTextField(
                      text: 'Date of Birth',
                      hintText: 'Date of Birth',
                      enabled: false,
                      suffixIcon: Icon(Icons.calendar_month),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    const CustomTextField(
                      text: 'Gender',
                      hintText: 'Male',
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      keyboardType: TextInputType.multiline,
                      obscureText: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child:
                          customBoldText(text: "Street Address", fontSize: 20),
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
                    pushTo: SettingsScreen(),
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
