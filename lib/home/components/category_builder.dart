import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:home_page_demo/ui/app_colors.dart';
import 'package:home_page_demo/data/data.dart';

class CategoryBuilder extends StatefulWidget {
  const CategoryBuilder({super.key, required this.items});
  final List<String> items;

  @override
  State<CategoryBuilder> createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: DefaultTabController(
            length: 4,
            child: ButtonsTabBar(
              backgroundColor: AppColors.bluePrimaryColor,
              unselectedBackgroundColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.grey.shade600),
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              buttonMargin: const EdgeInsets.symmetric(horizontal: 7.0),
              height: 34.0,
              tabs: const [
                Tab(
                  text: "   Ride   ",
                ),
                Tab(
                  text: "   Eat   ",
                ),
                Tab(
                  text: "Grocery",
                ),
                Tab(
                  text: "  Shop  ",
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              constraints: const BoxConstraints(maxHeight: 42),
              filled: true,
              fillColor: AppColors.grayInputColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black87,
              ),
              hintText: 'Where to?',
              hintStyle: const TextStyle(
                color: Colors.black87,
                fontSize: 13.0,
              ),
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.access_time,
                    size: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      'Now',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.expand_more,
                      size: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 225.0,
          child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Card(
                  elevation: 2.0,
                  clipBehavior: Clip.hardEdge,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Container(
                        color: AppColors.bluePrimaryColor,
                        width: 7.0,
                        height: 70.0,
                      ),
                      SizedBox(
                        width: 235,
                        height: 55,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categoryList[index].name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(color: Colors.black87),
                              ),
                              Flexible(
                                child: Text(
                                  categoryList[index].description,
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 15.0,
                              ),
                            ),
                            Container(
                              width: 85.0,
                              height: 45.0,
                              decoration: const BoxDecoration(
                                color: AppColors.bluePrimaryColor,
                                shape: BoxShape.rectangle,
                              ),
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  categoryList[index].image,
                                  width: 50.0,
                                  height: 70.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
