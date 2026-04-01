import 'package:auto_route/auto_route.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/screen/discovery_screen.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnbodingRoute.page  ),

    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: CarsDetails.page),
    AutoRoute(page: HomeScreeen.page),
    AutoRoute(page: DiscoveryRoute.page),
    AutoRoute(page: BottomNavgitorRoute.page,initial: true),
    AutoRoute(page: CarComparisonRoute.page, ),
    AutoRoute(page: LoginRoute.page,  ),
  ];
}