import 'package:flutter/material.dart';
import 'package:home_page_demo/home/components/category_builder.dart';
import 'package:home_page_demo/home/components/image_carousel.dart';
import 'package:home_page_demo/home/components/offer_banner.dart';
import 'package:home_page_demo/ui/app_colors.dart';
import 'components/custom_appbar.dart';
import 'components/custom_navigation_bar.dart';
import 'components/headline.dart';

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
          const ImageCarousel(images: [
            'https://pbs.twimg.com/media/Ft7gcUhWIAYUBcr?format=jpg&name=medium',
            'https://pbs.twimg.com/media/FtbJ0iAXsAAWmvM?format=jpg&name=medium',
            'https://pbs.twimg.com/media/Frs54HMXsAIue4X?format=jpg&name=medium',
            'https://pbs.twimg.com/media/FrcID4oWIAAak7j?format=jpg&name=medium',
            'https://pbs.twimg.com/media/Fp6TcOCX0AA-PKr?format=jpg&name=medium',
            'https://pbs.twimg.com/media/FpqUyOFWIAEvV5F?format=jpg&name=medium',
          ]),
          Headline(),
          const CategoryBuilder(
            items: [],
          ),
          OfferBanner(),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
    // });
  }
}
