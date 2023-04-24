import 'package:home_page_demo/models/models.dart';

const String headline = 'What would you like to order today?';

final List<String> images = [
  'https://pbs.twimg.com/media/Ft7gcUhWIAYUBcr?format=jpg&name=medium',
  'https://pbs.twimg.com/media/FtbJ0iAXsAAWmvM?format=jpg&name=medium',
  'https://pbs.twimg.com/media/Frs54HMXsAIue4X?format=jpg&name=medium',
  'https://pbs.twimg.com/media/FrcID4oWIAAak7j?format=jpg&name=medium',
  'https://pbs.twimg.com/media/Fp6TcOCX0AA-PKr?format=jpg&name=medium',
];

List categoryList = [
  CategoryItem(
    name: "Economy",
    description:
        'Select the vehicle size and price that fits your comfort level.',
    image:
        'https://crdms.images.consumerreports.org/c_scale,f_auto,h_250,w_355/prod/cars/cr/car-groups/105-11330-hero',
  ),
  CategoryItem(
    name: "Taxicab",
    description:
        'Support your local cab company with an opportunity to serve you.',
    image:
        'https://c8.alamy.com/comp/HTMCK1/yellow-taxi-isolated-on-white-background-3d-render-HTMCK1.jpg',
  ),
  CategoryItem(
    name: "Luxury",
    description:
        'Support your local cab company with an opportunity to serve you.',
    image:
        'https://www.carlelo.com/laravel/public/uploads/model/1647694717.webp',
  ),
];

List offers = [
  Offer(
    image: "Economy",
    headline: 'Select the vehicle size and price that fits your comfort level.',
    subtitle:
        'https://crdms.images.consumerreports.org/c_scale,f_auto,h_250,w_355/prod/cars/cr/car-groups/105-11330-hero',
  ),
];
