import 'package:ai_chatbot_new/screens/HistoryScreen/widgets/history_chat.dart';
import 'package:ai_chatbot_new/screens/HistoryScreen/widgets/history_pinned.dart';
import 'package:ai_chatbot_new/screens/HistoryScreen/widgets/history_shared.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: customAppBar(
            context: context, title: "History", actions: Icons.search),
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
                                  text: "Chat",
                                ),
                                Tab(
                                  text: "Pinned",
                                ),
                                Tab(
                                  text: "Shared",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            HistoryChat(),
                            HistoryPinned(),
                            HistoryShared(),
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
