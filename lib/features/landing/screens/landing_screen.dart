import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/colors.dart';
import 'package:flutter_whatsapp/common/widgets/custom_button.dart';
import 'package:flutter_whatsapp/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
            ),
            const SizedBox(height: 50),
            const Text(
              'Welcome to whatsapp',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/welcome-wtsap.png',
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 150,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy,Tap "Agree and Continue" to accepts terms of service',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: () => navigateToLoginScreen(context)),
          ],
        ),
      ),
    );
  }
}
