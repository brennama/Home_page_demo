import 'package:flutter/material.dart';
import 'package:home_page_demo/home/components/category_builder.dart';
import 'package:home_page_demo/home/components/image_carousel.dart';
import 'package:home_page_demo/home/components/offer_banner.dart';
import 'package:home_page_demo/ui/app_colors.dart';
import 'components/custom_appbar.dart';
import 'components/custom_navigation_bar.dart';
import 'components/headline.dart';
import 'package:home_page_demo/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBackgroundColor,
      body: Column(
        children: [
          const HomeAppBar(
            name: 'Shivani',
            location: 'ABC Road, LA',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyrjEuVeGE0ljpxJyXpqWxd6N1vOpS9aTG7A&usqp=CAU',
            cartItemCount: 4,
          ),
          ImageCarousel(images: images),
          const Headline(
            headline: headline,
          ),
          const CategoryBuilder(
            items: [],
          ),
          const OfferBanner(
            image: 'assets/images/badge.png',
            headline: 'GET 10% FOR 1ST ORDER',
            subtitle: 'On All Stores',
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
    // });
  }
}
