import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_bold_text.dart';
import 'package:ai_chatbot_new/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_appbar.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool onPressed0 = false;
  bool onPressed1 = false;
  bool onPressed2 = false;
  bool onPressed3 = false;
  bool onPressed4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
        title: "Security",
        context: context,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                onPressed0 = !onPressed0;
              });
            },
            // contentPadding: EdgeInsets.zero,
            title: customBoldText(text: "Remember me", fontSize: 18),
            trailing: Icon(
              onPressed0 == false
                  ? Icons.toggle_off_outlined
                  : Icons.toggle_on_outlined,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                onPressed1 = !onPressed1;
              });
            },
            // contentPadding: EdgeInsets.zero,
            title: customBoldText(text: "Biometric ID", fontSize: 18),
            trailing: Icon(
              onPressed1 == false
                  ? Icons.toggle_off_outlined
                  : Icons.toggle_on_outlined,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                onPressed2 = !onPressed2;
              });
            },
            // contentPadding: EdgeInsets.zero,
            title: customBoldText(text: "Face ID", fontSize: 18),
            trailing: Icon(
              onPressed2 == false
                  ? Icons.toggle_off_outlined
                  : Icons.toggle_on_outlined,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                onPressed3 = !onPressed3;
              });
            },
            // contentPadding: EdgeInsets.zero,
            title: customBoldText(text: "SMS Authenticator", fontSize: 18),
            trailing: Icon(
              onPressed3 == false
                  ? Icons.toggle_off_outlined
                  : Icons.toggle_on_outlined,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                onPressed4 = !onPressed4;
              });
            },
            // contentPadding: EdgeInsets.zero,
            title: customBoldText(text: "Google Authenticator", fontSize: 18),
            trailing: Icon(
              onPressed4 == false
                  ? Icons.toggle_off_outlined
                  : Icons.toggle_on_outlined,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            // contentPadding: EdgeInsets.zero,
            title: customBoldText(text: "Device Management", fontSize: 18),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
            ),
          ),

          // Change Password Button
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: CustomButton(
              primaryDesign: false,
              text: "Change Password",
              pushTo: null,
            ),
          ),
        ],
      ),
    );
  }
}
