import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_divider.dart';

class CustomInstructionsScreen extends StatefulWidget {
  const CustomInstructionsScreen({super.key});

  @override
  State<CustomInstructionsScreen> createState() => _CustomInstructionsState();
}

class _CustomInstructionsState extends State<CustomInstructionsScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // AppBar
      appBar: customAppBar(context: context, title: "Custom Instructions"),
      // Body
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
                    customBoldText(
                        text:
                            "What would you like Chatify to know about you to provide better responses?",
                        fontSize: 17),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 7),
                            child: TextField(
                              minLines: 6,
                              maxLines: 6,
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 17),
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                hintText: "Your answer...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    customBoldText(
                        text: "How would you like Chatify to respond?",
                        fontSize: 17),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 7),
                            child: TextField(
                              minLines: 6,
                              maxLines: 6,
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 17),
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                hintText: "Your answer...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customBoldText(
                            text: "Enable for new chats", fontSize: 20),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              value = !value;
                            });
                          },
                          icon: Icon(
                            value == false
                                ? Icons.toggle_off_outlined
                                : Icons.toggle_on_outlined,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                customDivider(),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.greyColor.withOpacity(.1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Expanded(
                        child: CustomButton(
                          primaryDesign: true,
                          text: "Save",
                          pushTo: null,
                        ),
                      ),
                    ],
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
