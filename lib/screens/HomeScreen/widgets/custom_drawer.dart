import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:ai_chatbot_new/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../HistoryScreen/history_screen.dart';
import '../../SettingsScreen/settings_screen.dart';
import '../../UpgradeToProScreen/upgrade_to_pro.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.greyColor.withOpacity(.2),
                        radius: 35,
                        backgroundImage:
                            const AssetImage("assets/images/profile.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customBoldText(text: "Andrew Ainsley", fontSize: 22),
                          const SizedBox(
                            height: 5,
                          ),
                          customBoldText(
                              text: "andreanw@gmail.com",
                              fontSize: 16,
                              color: AppColors.greyColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpgradeToProScreen(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
                      child: CircleAvatar(
                        backgroundColor: AppColors.backgroundColor,
                        radius: 28,
                        child: Icon(
                          Icons.star,
                          color: Colors.deepOrangeAccent,
                          size: 30,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customBoldText(
                            text: "Upgrade to PRO!",
                            fontSize: 20,
                            color: AppColors.backgroundColor),
                        const SizedBox(
                          height: 5,
                        ),
                        customBoldText(
                            text:
                                "Enjoy all the benefits and explore \nmore possibilities",
                            fontSize: 12,
                            color: AppColors.backgroundColor),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColors.backgroundColor,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(
              Icons.add,
              size: 28,
              color: AppColors.iconColor,
            ),
            title: customBoldText(text: "New Chat", fontSize: 20),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoryScreen(),
                ),
              );
            },
            child: ListTile(
              leading: const Icon(
                Icons.history,
                size: 28,
                color: AppColors.iconColor,
              ),
              title: customBoldText(text: "History", fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: customDivider(),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                size: 28,
                color: AppColors.iconColor,
              ),
              title: customBoldText(text: "Setting", fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
