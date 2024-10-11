import 'package:flutter/material.dart';
import 'package:pocemon_app/core/theme/app_colors.dart';

class CommonBackgroundCircle extends StatelessWidget {
  const CommonBackgroundCircle({
    required this.color,
    this.radius = 300,
    super.key,
  });

  final Color color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 1,
      decoration: BoxDecoration(
          color: AppColors.color41AAF7.withOpacity(0.01),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 100,
              color: AppColors.color41AAF7.withOpacity(0.2),
              spreadRadius: 300,
            )
          ]),
    );
  }
}
