import 'package:flutter/material.dart';
import 'package:pocemon_app/core/assets/app_images.dart';

class PokemonDetailsButtons extends StatelessWidget {
  const PokemonDetailsButtons({
    required this.onleftTap,
    required this.onRightTap,
    required this.onCenterTap,
    required this.isLeftButtonActive,
    required this.isRightButtonActive,
    super.key,
  });
  final Function() onleftTap;
  final Function() onRightTap;
  final Function() onCenterTap;
  final ValueNotifier<bool> isLeftButtonActive;
  final ValueNotifier<bool> isRightButtonActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ValueListenableBuilder(
          valueListenable: isLeftButtonActive,
          builder: (context, value, child) {
            return Visibility(
              visible: value,
              child: InkWell(
                onTap: onleftTap,
                child: Image.asset(
                  AppImages.prevButton,
                  scale: 3,
                ),
              ),
            );
          },
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            AppImages.pokeBall,
            scale: 4,
          ),
        ),
        ValueListenableBuilder(
          valueListenable: isRightButtonActive,
          builder: (context, value, child) {
            return Visibility(
              visible: value,
              child: InkWell(
                onTap: onRightTap,
                child: Image.asset(
                  AppImages.nextButton,
                  scale: 3,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
