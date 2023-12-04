import 'package:fitnest/auth/onboarding-screens/onboarding_screeen_2.dart';
import 'package:fitnest/utils/colors.dart';
import 'package:fitnest/utils/styles.dart';
import 'package:fitnest/widgets/button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image(
              image: const AssetImage('assets/images/frame-1.png'),
              height: 440,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Track Your Goal',
                    style: MyText.titleH2,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                    style: MyText.mediumText.copyWith(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 150),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: MyButton(
                      width: 50,
                      text: '>',
                      style: MyText.subtitle.copyWith(
                        fontSize: 26,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      colors: const LinearGradient(
                        colors: [
                          AppColors.lightBlue,
                          AppColors.blue,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      onPress: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const OnBoardingScreenTwo();
                          },
                        ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
