import 'package:ai_chatbot_new/utils/colors.dart';
import 'package:ai_chatbot_new/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bold_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_text_field.dart';
import '../EmailOtpCodScreen/email_otp_code_screen.dart';

class EmailForgotPassword extends StatelessWidget {
  const EmailForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: customAppBar(
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Reset your password
                customBoldText(text: "Reset your password 🔑", fontSize: 30),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Please enter your email and we send an OTP code in the next step to reset your password.",
                  style: TextStyle(fontSize: 17, color: AppColors.greyColor),
                ),

                // TextField
                const CustomTextField(
                  text: "Email",
                  hintText: "Email",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
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
                    text: "Continue",
                    pushTo: EmailOtpCodScreen(),
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
