import 'package:home_page_demo/models/home_result.dart';

class HomeService {
  // Mocked API data set.
  List<HomeResult> get users => [
        const HomeResult(
            name: 'Shivani',
            location: 'ABC Road, LA',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyrjEuVeGE0ljpxJyXpqWxd6N1vOpS9aTG7A&usqp=CAU',
            cartItems: 4),
        const HomeResult(
            name: 'Joe',
            location: 'ABC Road, LA',
            imageUrl:
                'https://www.shutterstock.com/image-photo/portrait-happy-mid-adult-man-260nw-1812937819.jpg',
            cartItems: 5),
        const HomeResult(
            name: 'John',
            location: 'ABC Road, LA',
            imageUrl:
                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            cartItems: 9),
        const HomeResult(
            name: 'Kevin',
            location: 'ABC Road, LA',
            imageUrl:
                'https://www.shutterstock.com/image-photo/portrait-young-handsome-asian-adult-260nw-2204416587.jpg',
            cartItems: 4),
        const HomeResult(
            name: 'Benjamin',
            location: 'ABC Road, LA',
            imageUrl:
                'https://mochamanstyle.com/wp-content/uploads/2015/01/black-man-scarf.jpg',
            cartItems: 2),
        const HomeResult(
            name: 'Alice',
            location: 'ABC Road, LA',
            imageUrl:
                'https://t3.ftcdn.net/jpg/03/58/93/04/360_F_358930412_rodvr4vvY4LG0bUG8MKC3wwCZhWGozcW.jpg',
            cartItems: 5),
      ];
//
//   Future<HomeResponse> fetchHomeItems({required String homeQuery}) async {
//     final matchedItems = users
//         .where((result) =>
//             result.name.toLowerCase().contains(homeQuery.toLowerCase()))
//         .toList();
//
//     return Future.value(HomeResponse(success: true, homeResults: matchedItems));
//   }
}
