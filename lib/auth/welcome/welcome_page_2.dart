import 'package:fitnest/auth/onboarding-screens/onboarding_screen.dart';
import 'package:fitnest/utils/colors.dart';
import 'package:fitnest/utils/styles.dart';
import 'package:fitnest/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomePageTwo extends StatelessWidget {
  const WelcomePageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lightBlue,
            AppColors.blue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 270),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fitnest',
                      style: MyText.titleH1.copyWith(
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      'X',
                      style: MyText.titleH1.copyWith(
                        fontSize: 50,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Everybody can train',
                  style: MyText.subtitle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGrey,
                  ),
                ),
                const Spacer(),
                MyButton(
                  text: 'Get Started',
                  style: MyText.subtitle.copyWith(
                    fontSize: 16,
                    color: AppColors.lightBlue,
                  ),
                  color: AppColors.white,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OnBoardingScreen();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
