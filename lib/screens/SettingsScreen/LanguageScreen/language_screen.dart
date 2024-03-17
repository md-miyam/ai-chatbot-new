import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List languageData = [
    {
      'language': 'English (US)',
      'image': 'assets/images/USA.webp',
    },
    {
      'language': 'English (UK)',
      'image': 'assets/images/UK.webp',
    },
    {
      'language': 'Mandarin',
      'image': 'assets/images/mandarin.webp',
    },
    {
      'language': 'Spanish',
      'image': 'assets/images/spanish.png',
    },
    {
      'language': 'Hindi',
      'image': 'assets/images/hindi.webp',
    },
    {
      'language': 'French',
      'image': 'assets/images/french.webp',
    },
    {
      'language': 'Arabic',
      'image': 'assets/images/arabic.png',
    },
    {
      'language': 'Russian',
      'image': 'assets/images/russian.png',
    },
    {
      'language': 'Japanese',
      'image': 'assets/images/Japanese.webp',
    },
  ];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
        title: "Language",
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: languageData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: currentIndex != index
                                    ? AppColors.borderColor
                                    : AppColors.primaryColor)),
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
                                        languageData[index]['image'],
                                        fit: BoxFit.cover),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    languageData[index]['language'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.textColor),
                                  ),
                                ],
                              ),
                              currentIndex != index
                                  ? const SizedBox()
                                  : const Icon(Icons.done,
                                      color: AppColors.primaryColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
