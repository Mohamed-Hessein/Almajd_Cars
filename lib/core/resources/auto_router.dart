import 'package:auto_route/auto_route.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnbodingRoute.page, initial: true ),

    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: Home.page,),
    AutoRoute(page: LoginRoute.page,  ),
  ];
}