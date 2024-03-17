import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_text_field.dart';
import '../HomeScreen/home_screen.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool _obscureText = true;
  bool _obscureTextnext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Create new password
                customBoldText(text: "Create new password 🔒", fontSize: 30),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create your new password. If you forget it, then you have to do forgot password.",
                  style: TextStyle(fontSize: 17, color: AppColors.greyColor),
                ),

                // TextField
                CustomTextField(
                  text: "New Password",
                  hintText: "New Password",
                  prefixIcon: Icons.lock,
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                  obscureText: _obscureText,
                ),
                CustomTextField(
                  text: "Confirm New Password",
                  hintText: "Confirm New Password",
                  prefixIcon: Icons.lock,
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        _obscureTextnext = !_obscureTextnext;
                      });
                    },
                    child: Icon(_obscureTextnext
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  obscureText: _obscureTextnext,
                ),
              ],
            ),

            // Custom button
            Column(
              children: [
                customDivider(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: CustomButton(
                    primaryDesign: true,
                    text: "Save New Password",
                    pushTo: HomeScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
