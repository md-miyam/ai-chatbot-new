import 'package:ai_chatbot_new/screens/SettingsScreen/CustomInstructionsScreen/custom_instructions_Screen.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/DataControlsScreen/data_controls_screen.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/LinkedAccountsScreen/linked_accounts_screen.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/PaymentMethodsScreen/payment_methods_screen.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/PersonalInfoScreen/personal_info_screen.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/SecurityScreen/security_screen.dart';
import 'package:ai_chatbot_new/screens/SettingsScreen/widgets/custom_divider.dart';
import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:ai_chatbot_new/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'AboutChatifyScreen/about_chatify_screen.dart';
import 'HelpCenterScreen/help_center_screen.dart';
import 'LanguageScreen/language_screen.dart';
import 'PrivacyPolicyScreen/privacy_policy_screen.dart';
import 'TermsOfUsScreen/terms_of_us_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context, title: "Settings"),
      body: SingleChildScrollView(
        child: Column(children: [
          const CustomListTile(
            leading: Icons.message_outlined,
            title: "Custom Instructions",
            trailingArrow: true,
            onTap: CustomInstructionsScreen(),
          ),
          const CustomListTile(
            leading: Icons.data_usage,
            title: "Data Controls",
            trailingArrow: true,
            onTap: DataControlsScreen(),
          ),
          const CustomListTile(
            leading: Icons.payments_outlined,
            title: "Payment Methods",
            trailingArrow: true,
            onTap: PaymentMethodsScreen(),
          ),
          const CustomListTile(
            leading: Icons.dataset_linked_outlined,
            title: "Linked Accounts",
            trailingArrow: true,
            onTap: LinkedAccountsScreen(),
          ),
          const CustomDivider(text: "General"),
          const CustomListTile(
            leading: Icons.person_outline,
            title: "Personal Info",
            trailingArrow: true,
            onTap: PersonalInfoScreen(),
          ),
          const CustomListTile(
            leading: Icons.security,
            title: "Security",
            trailingArrow: true,
            onTap: SecurityScreen(),
          ),
          const CustomListTile(
            leading: Icons.language,
            title: "Language",
            trailingArrow: true,
            onTap: LanguageScreen(),
          ),
          CustomListTile(
            onTap: () {
              setState(() {
                isDark = !isDark;
              });
            },
            leading: Icons.remove_red_eye_outlined,
            title: "Dark Mode",
            trailing: Icon(
              isDark == false
                  ? Icons.toggle_off_outlined
                  : Icons.toggle_on_outlined,
              color: Colors.black,
            ),
          ),
          const CustomDivider(text: "About"),
          const CustomListTile(
            leading: Icons.help_center_outlined,
            title: "Help Center",
            trailingArrow: true,
            onTap: HelpCenter(),
          ),
          const CustomListTile(
            leading: Icons.key,
            title: "Terms of Use",
            trailingArrow: true,
            onTap: TermsOfUsScreen(),
          ),
          const CustomListTile(
            leading: Icons.lock_outline,
            title: "Privacy Policy",
            trailingArrow: true,
            onTap: PrivacyPolicyScreen(),
          ),
          const CustomListTile(
            leading: Icons.account_balance_wallet_outlined,
            title: "About Chatify",
            trailingArrow: true,
            onTap: AboutChatifyScreen(),
          ),
          const CustomListTile(
            leading: Icons.logout,
            leadingColor: Colors.red,
            title: "Logout",
            titleColor: Colors.red,
            onTap: null,
          ),
        ]),
      ),
    );
  }
}
