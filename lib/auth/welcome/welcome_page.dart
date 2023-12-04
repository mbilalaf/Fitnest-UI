import 'package:fitnest/auth/welcome/welcome_page_2.dart';
import 'package:fitnest/utils/colors.dart';
import 'package:fitnest/utils/styles.dart';
import 'package:fitnest/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class WelcomePageOne extends StatelessWidget {
  const WelcomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              const SizedBox(height: 270),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Fitnest',
                      style: MyText.titleH1.copyWith(
                        fontSize: 36,
                      ),
                    ),
                    GradientText(
                      'X',
                      style: MyText.titleH1.copyWith(
                        fontSize: 50,
                      ),
                      gradientDirection: GradientDirection.ttb,
                      colors: const [AppColors.lightBlue, AppColors.blue],
                    ),
                  ],
                ),
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
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WelcomePageTwo();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
