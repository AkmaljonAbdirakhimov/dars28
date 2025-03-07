import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../widgets/app_logo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> items = [
    {
      "title": "Salomjon",
      "subtitle": "Get Up To 10% OFF",
    },
    {
      "title": "Ilhomjon",
      "subtitle": "Get Up To 20% OFF",
    },
    {
      "title": "Dilshodjon",
      "subtitle": "Get Up To 30% OFF",
    },
  ];

  Widget buildCarouselItem({
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      height: 115,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.banner),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment(0.5, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppLogo(width: 26),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.locationIcon,
              ),
              SizedBox(width: 8),
              Text(
                "Tashkent, Uzbekistan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryTextColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(height: 50), // Aslida Izlash bo'lishi kerak
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 115,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: PageView(
              children: items.map((value) {
                return buildCarouselItem(
                  title: value['title'] ?? "",
                  subtitle: value['subtitle'] ?? "",
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
