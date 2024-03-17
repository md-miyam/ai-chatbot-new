import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../widgets/custom_bold_text.dart';

class HistoryShared extends StatelessWidget {
  const HistoryShared({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.all(0),
            leading: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.borderColor, width: 1.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.link,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            title: customBoldText(
                text: "Hello there, I need some help..", fontSize: 16),
            subtitle: customBoldText(
                text: "Hello ! I'd happy to help you ...",
                color: AppColors.textColor.withOpacity(.5),
                fontSize: 15,
                fontWeight: FontWeight.normal),
            trailing: PopupMenuButton(
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
                    ),
                  ),
                ];
              },
            ),
          );
        },
      ),
    );
  }
}
