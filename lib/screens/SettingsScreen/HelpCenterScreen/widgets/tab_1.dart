import 'package:flutter/material.dart';
import 'custom_contact_us_button.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            CustomContactUsButton(
                leading: "assets/icons/customer support.png",
                title: "Customer Support"),
            CustomContactUsButton(
                leading: "assets/icons/website.png", title: "Website"),
            CustomContactUsButton(
                leading: "assets/icons/whatsapp.png", title: "WhatsApp"),
            CustomContactUsButton(
                leading: "assets/icons/facebook.png", title: "Facebook"),
            CustomContactUsButton(
                leading: "assets/icons/twitter.png", title: "Twitter"),
            CustomContactUsButton(
                leading: "assets/icons/instagram.png", title: "Instagram"),
          ],
        ),
      ),
    );
  }
}
