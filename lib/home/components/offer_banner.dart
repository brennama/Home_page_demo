import 'package:flutter/material.dart';
import 'package:home_page_demo/ui/app_colors.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner(
      {super.key,
      required this.image,
      required this.headline,
      required this.subtitle});

  final String image;
  final String headline;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bluePrimaryColor,
      width: MediaQuery.of(context).size.width,
      height: 65.0,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.0,
            color: AppColors.grayBackgroundColor,
          ),
          Positioned(
            left: 23.0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3.5,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.bluePrimaryColor, width: 9.5),
                  color: AppColors.bluePrimaryColor,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    image,
                    width: 15.0,
                    height: 15.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 91.0,
            top: 20.0,
            child: Column(
              children: [
                Text(
                  headline,
                  style: const TextStyle(
                      color: AppColors.blueSecondaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 113.0,
                    top: 2.0,
                  ),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 0.0,
            left: 345.0,
            child: TextButton(
              onPressed: null,
              child: Icon(
                Icons.close_rounded,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
