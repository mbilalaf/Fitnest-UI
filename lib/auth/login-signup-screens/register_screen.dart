import 'package:fitnest/utils/colors.dart';
import 'package:fitnest/utils/styles.dart';
import 'package:fitnest/widgets/button.dart';
import 'package:fitnest/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Text(
                  'Hey there,',
                  style: MyText.largeText,
                ),
                const Text(
                  'Create an account',
                  style: MyText.titleH4,
                ),
                const CustomTextfield(
                  hintText: 'First Name',
                  prefixicon: FontAwesomeIcons.user,
                ),
                const SizedBox(height: 15),
                const CustomTextfield(
                  hintText: 'Last Name',
                  prefixicon: FontAwesomeIcons.user,
                ),
                const SizedBox(height: 15),
                const CustomTextfield(
                  hintText: 'Email',
                  prefixicon: FontAwesomeIcons.envelope,
                ),
                const SizedBox(height: 15),
                const CustomTextfield(
                  hintText: 'Password',
                  prefixicon: Icons.lock,
                  suffixicon: Icons.remove_red_eye,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (v) {},
                    ),
                    Text(
                      'By continuing you accept our Privacy Policy and\nTerm of Use',
                      style: MyText.caption.copyWith(
                        color: AppColors.dawnGrey,
                      ),
                    ),
                  ],
                ),
                MyButton(
                  text: 'Register',
                  style: MyText.subtitle.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  onPress: () {},
                  colors: const LinearGradient(
                    colors: [
                      AppColors.lightBlue,
                      AppColors.blue,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
