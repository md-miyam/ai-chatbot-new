import 'package:ai_chatbot_new/screens/SettingsScreen/HelpCenterScreen/widgets/tab_0.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/HelpCenterScreen/widgets/tab_1.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  List item = [
    "General",
    "Account",
    "Chatbot",
    "General",
    "Account",
    "Chatbot",
  ];
  List<Map> helpInfo = [
    {
      'barMessage': 'What is Chatify?',
      'tapMessage':
          'Chatify is an AI-powered chatbot application designed to provide information, assistance, and engaging conversations.It\'s here to answer your questions, entertain, and make your daly interactions more convenient.',
      'isTap': false,
    },
    {
      'barMessage': 'What is Chatify?',
      'tapMessage':
          'Chatify is an AI-powered chatbot application designed to provide information, assistance, and engaging conversations.It|\'s here to answer your questions, entertain, and make your daly interactions more convenient.',
      'isTap': false,
    },
    {
      'barMessage': 'What is Chatify?',
      'tapMessage':
          'Chatify is an AI-powered chatbot application designed to provide information, assistance, and engaging conversations.It|\'s here to answer your questions, entertain, and make your daly interactions more convenient.',
      'isTap': false,
    },
  ];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: customAppBar(context: context, title: "Help Center"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              // TapBar
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            TabBar(
                              labelColor: AppColors.backgroundColor,
                              unselectedLabelColor: AppColors.textColor,
                              labelStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              indicator: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              tabs: const [
                                Tab(
                                  text: "FAQ",
                                ),
                                Tab(
                                  text: "Contact us",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            Tab0(),
                            Tab1(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
