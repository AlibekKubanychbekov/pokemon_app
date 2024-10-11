import 'package:flutter/material.dart';
import 'package:pocemon_app/core/extensions/build_context_extension.dart';
import 'package:pocemon_app/core/theme/app_colors.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppColors.yellow),
              child: const Text(
                'Start viewing',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.bgColor,
                ),
              ),
            ),
          ),
          const Text(
            'Don`t have an account?',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
