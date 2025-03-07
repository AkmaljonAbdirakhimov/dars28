import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_images.dart';

class AppLogo extends StatelessWidget {
  final double width;
  final double? height;

  const AppLogo({
    super.key,
    required this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppImages.logo,
      width: width,
      height: height,
    );
  }
}
