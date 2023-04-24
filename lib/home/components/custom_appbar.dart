import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_page_demo/ui/app_colors.dart';
import 'package:home_page_demo/data/home_service.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar(
      {super.key,
      required this.name,
      required this.location,
      required this.imageUrl,
      required this.cartItemCount});

  final String name;
  final String location;
  final String imageUrl;
  final int cartItemCount;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppColors.bluePrimaryColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 9.0, bottom: 9.0),
        child: Container(
          width: 100.0,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(50),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome, $name',
            style: const TextStyle(fontSize: 14.0),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 13.0,
                color: Colors.grey,
              ),
              Text(
                location,
                style: const TextStyle(fontSize: 10.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
              height: 150.0,
              width: 30.0,
              child: GestureDetector(
                onTap: () {},
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: SizedBox(
                        width: 21.0,
                        child: Image.asset(
                          'assets/images/shopping-cart-outline.png',
                          width: 30.0,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 18.0,
                      left: 15.0,
                      child: Stack(
                        children: <Widget>[
                          const Icon(Icons.brightness_1,
                              size: 15.0, color: AppColors.redPrimaryColor),
                          Positioned(
                              top: 1.0,
                              right: 4.5,
                              child: Center(
                                child: Text(
                                  cartItemCount.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
