import 'package:flutter/material.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:home_page_demo/ui/app_colors.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  CustomNavigationBarState createState() => CustomNavigationBarState();
}

class CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0; //default index

  @override
  Widget build(BuildContext context) {
    return CustomLineIndicatorBottomNavbar(
      selectedColor: AppColors.bluePrimaryColor,
      unSelectedColor: Colors.grey,
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      unselectedIconSize: 20,
      selectedIconSize: 20,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      enableLineIndicator: true,
      lineIndicatorWidth: 5.0,
      indicatorType: IndicatorType.Top,
      // gradient: LinearGradient(
      //   colors: [Colors.pink, Colors.yellow],
      // ),
      customBottomBarItems: [
        CustomBottomBarItems(
          label: 'Home',
          icon: Icons.home,
        ),
        CustomBottomBarItems(
          label: 'Services',
          icon: Icons.more_outlined,
        ),
        CustomBottomBarItems(
          label: 'My Orders',
          icon: Icons.shopping_bag_outlined,
        ),
        CustomBottomBarItems(
          label: 'My Account',
          icon: Icons.person_outline_rounded,
        ),
      ],
    );
  }
}
