import 'package:ai_chatbot_new/screens/HomeScreen/widgets/custom_drawer.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  List<Map> chatData = [
    {
      'message': 'Hi',
      'profile': 'assets/images/ai.profile.png',
      'isMe': true,
    },
    {
      'message': 'Hlw',
      'profile': 'assets/images/logo.png',
      'isMe': false,
    },
    {
      'message':
          'Hlw, uis aute irure dolor in reprehenderit in voluptate velit esse cillum',
      'profile': 'assets/images/ai.profile.png',
      'isMe': true,
    },
    {
      'message':
          'Hi, How can i help you? uis aute irure dolor in reprehenderit in voluptate velit esse cillum',
      'profile': 'assets/images/logo.png',
      'isMe': false,
    },
    {
      'message':
          'In Tehran, five transgender citizens were arrested following a quarrel with a religious vigilante who targeted them for their attire.',
      'profile': 'assets/images/ai.profile.png',
      'isMe': true,
    },
    {
      'message':
          'Yes, you can learn Data Structures and Algorithms for free on various platforms. Here are some popular ones',
      'profile': 'assets/images/logo.png',
      'isMe': false,
    },
    {
      'message':
          'GeeksforGeeks: To learn Data Structures and Algorithms (DSA), follow these steps:Understand the Basics: Start with the fundamentals of programming languages, Offers a comprehensive collection of DSA tutorials, articles, and practice problems. GeeksforGeeks',
      'profile': 'assets/images/ai.profile.png',
      'isMe': true,
    },
    {
      'message':
          'Khan Academy: Provides interactive lessons on algorithms and basic data structures.Khan Academy',
      'profile': 'assets/images/logo.png',
      'isMe': false,
    },
    {
      'message':
          'Lorem ipsum dolor sit amet, consecrate disciplining elite, sed do usermod temper incident ut labor et do lore magna aliquot.',
      'profile': 'assets/images/ai.profile.png',
      'isMe': true,
    },
    {
      'message':
          'Select a word, line, or paragraph.In Tehran, The footage of their coerced confession has recently been released by security-affiliated media.',
      'profile': 'assets/images/logo.png',
      'isMe': false,
    },
    {
      'message': 'Yeah,Select a word, line, or paragraph',
      'profile': 'assets/images/ai.profile.png',
      'isMe': true,
    },
    {
      'message':
          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
      'profile': 'assets/images/logo.png',
      'isMe': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: AppColors.backgroundColor,

      // appBar
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              scaffoldkey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.dehaze_rounded,
              color: AppColors.iconColor,
              size: 28,
            )),
        title: const Text(
          "Chatify",
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // actions button
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.iconColor,
              size: 28,
            ),
            onSelected: (value) {
              if (value == 0) {
                print("$value value 0");
              } else if (value == 1) {
                print("$value value 1");
              } else if (value == 2) {
                print("$value value 2");
              } else {
                print("$value value 3 ");
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: AppColors.iconColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Share Link",
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.pin_drop_outlined,
                          color: AppColors.iconColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pin",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(
                          Icons.drive_file_rename_outline_outlined,
                          color: AppColors.iconColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rename",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                const PopupMenuItem(
                    value: 3,
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Delete",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ];
            },
          )
        ],
      ),
      // drawer
      drawer: const CustomDrawer(),
      // body
      body: Column(
        children: [
          // Message
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: chatData.length,
                        shrinkWrap: true,
                        primary: false,
                        reverse: true,
                        itemBuilder: (context, index) {
                          final data = chatData[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              data['isMe'] != true
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // CircleAvatar from api
                                          // CircleAvatar(
                                          //   radius: 12,
                                          //   backgroundImage: AssetImage(chatData[index]['profile']),
                                          //   backgroundColor: Colors.white,
                                          // ),

                                          const CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                "assets/images/logo.png"),
                                            backgroundColor:
                                                AppColors.backgroundColor,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                              child: Container(
                                            // width: MediaQuery.of(context).size.width * 0.7,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(.1),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 12.0,
                                                        vertical: 10.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        data["message"],
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: const TextStyle(
                                                            fontSize: 17,
                                                            color: AppColors
                                                                .textColor),
                                                      ),
                                                    ),

                                                    // Spike button
                                                    InkWell(
                                                      onTap: () {
                                                        print("Spike");
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: AppColors
                                                                .greyColor
                                                                .withOpacity(
                                                                    .8),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Icon(
                                                            Icons
                                                                .volume_up_rounded,
                                                            color: AppColors
                                                                .iconColor,
                                                            size: 22,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          )),
                                        ],
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                chatData[index]["profile"]),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Container(
                                              // width: MediaQuery.of(context).size.width * 0.9,
                                              decoration: BoxDecoration(
                                                color: AppColors.greyColor
                                                    .withOpacity(.1),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 12.0,
                                                      vertical: 10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          data["message"],
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: const TextStyle(
                                                              fontSize: 17,
                                                              color: AppColors
                                                                  .textColor),
                                                        ),
                                                      ),

                                                      // Spike button
                                                      InkWell(
                                                        onTap: () {
                                                          print("Edit");
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(2.0),
                                                          child: Icon(
                                                            Icons
                                                                .drive_file_rename_outline_outlined,
                                                            color: AppColors
                                                                .iconColor
                                                                .withOpacity(
                                                                    .8),
                                                            size: 22,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // TextField
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: AppColors.iconColor,
                              )),
                        ),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: AppColors.iconColor),
                            minLines: 1,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Ask me anything...",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.textColor.withOpacity(.5))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic_rounded,
                                color: AppColors.iconColor,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: AppColors.primaryColor,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
