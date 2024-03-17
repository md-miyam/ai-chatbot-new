import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_list_tile.dart';

class DataControlsScreen extends StatefulWidget {
  const DataControlsScreen({super.key});

  @override
  State<DataControlsScreen> createState() => _DataControlsState();
}

class _DataControlsState extends State<DataControlsScreen> {
  bool history = false;
  bool training = false;
  bool encryption = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "Data Controls"),
      body: Column(
        children: [
          CustomListTile(
            leading: Icons.history,
            leadingColor: AppColors.iconColor,
            title: "Chat History",
            titleColor: AppColors.textColor,
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  history = !history;
                });
              },
              icon: Icon(
                history == false
                    ? Icons.toggle_off_outlined
                    : Icons.toggle_on_outlined,
                color: AppColors.iconColor,
              ),
            ),
          ),
          CustomListTile(
            leading: Icons.trending_up,
            leadingColor: AppColors.iconColor,
            title: "Data Training",
            titleColor: AppColors.textColor,
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  training = !training;
                });
              },
              icon: Icon(
                training == false
                    ? Icons.toggle_off_outlined
                    : Icons.toggle_on_outlined,
                color: AppColors.iconColor,
              ),
            ),
          ),
          CustomListTile(
            leading: Icons.vpn_key_outlined,
            leadingColor: AppColors.iconColor,
            title: "Data Encryption",
            titleColor: AppColors.textColor,
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  encryption = !encryption;
                });
              },
              icon: Icon(
                encryption == false
                    ? Icons.toggle_off_outlined
                    : Icons.toggle_on_outlined,
                color: AppColors.iconColor,
              ),
            ),
          ),
          const CustomListTile(
            leading: Icons.swap_vert,
            title: "Third-Party Integrations",
            trailingArrow: true,
            onTap: null,
          ),
          const CustomListTile(
            leading: Icons.system_update_alt,
            title: "Export Data",
            trailingArrow: true,
            onTap: null,
          ),
          const CustomListTile(
            leading: Icons.delete_outline,
            leadingColor: Colors.red,
            title: "Delete All Chat History",
            titleColor: Colors.red,
            trailingArrow: true,
            trailingColor: Colors.red,
            onTap: null,
          ),
        ],
      ),
    );
  }
}
