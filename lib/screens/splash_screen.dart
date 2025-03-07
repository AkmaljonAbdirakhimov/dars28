import 'package:flutter/material.dart';
import '../widgets/app_logo.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToHome(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));

    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    goToHome(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLogo(
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
