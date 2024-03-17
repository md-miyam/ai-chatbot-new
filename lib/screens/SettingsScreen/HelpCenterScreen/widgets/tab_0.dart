import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class Tab0 extends StatefulWidget {
  const Tab0({super.key});

  @override
  State<Tab0> createState() => _Tab0State();
}

class _Tab0State extends State<Tab0> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.borderColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8),
                        child: Text(
                          item[index],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textColor),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.textColor.withOpacity(.3),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          color: AppColors.textColor.withOpacity(.3)),
                      border: InputBorder.none),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          if (currentIndex == index) {
                            currentIndex = null;
                          } else {
                            currentIndex = index;
                          }
                        },
                      );
                    },
                    child: Column(
                      children: [
                        currentIndex != index
                            ? Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        helpInfo[index]['barMessage'],
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.textColor),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: AppColors.textColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "What is Chatify?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.textColor),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_up,
                                            color: AppColors.textColor,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Divider(
                                          color: AppColors.borderColor,
                                          thickness: 1,
                                        ),
                                      ),
                                      const Text(
                                        "Chatify is an AI-powered chat-bot application designed to provide information, assistance, and engaging conversations.It's here to answer your questions, entertain, and make your daly interactions more convenient.",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
