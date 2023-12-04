// ignore_for_file: sized_box_for_whitespace

import 'package:fitnest/utils/colors.dart';
import 'package:fitnest/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final IconData prefixicon;
  final IconData? suffixicon;
  const CustomTextfield(
      {super.key,
      required this.hintText,
      required this.prefixicon,
      this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: AppColors.lightGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: AppColors.lightGrey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: AppColors.lightGrey,
            ),
          ),
          hintText: hintText,
          hintStyle: MyText.smallText.copyWith(
            color: const Color(0xffADA4A5),
            fontSize: 16,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              bottom: 15,
            ),
            child: FaIcon(
              prefixicon,
              size: 16,
              color: AppColors.darkGrey,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
              bottom: 15,
            ),
            child: FaIcon(
              suffixicon,
              size: 16,
              color: AppColors.darkGrey,
            ),
          ),
          fillColor: AppColors.whiteBorder,
          filled: true,
        ),
      ),
    );
  }
}
