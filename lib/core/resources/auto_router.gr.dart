// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:cars_e_commerce/Features/auth/login/presentation/screen/login_screen.dart'
    as _i6;
import 'package:cars_e_commerce/Features/auth/signup/presentation/screen/signup_screen.dart'
    as _i8;
import 'package:cars_e_commerce/Features/cars_details/presentation/screen/cars_details.dart'
    as _i3;
import 'package:cars_e_commerce/Features/comperssion/prsentation/screen/compression_screen.dart'
    as _i2;
import 'package:cars_e_commerce/Features/discover/presenatation/screen/discovery_screen.dart'
    as _i4;
import 'package:cars_e_commerce/Features/home/presentation/screen/bottom_navgitor_screen.dart'
    as _i1;
import 'package:cars_e_commerce/Features/home/presentation/screen/home.dart'
    as _i5;
import 'package:cars_e_commerce/Features/onBording/presentation/screen/onboding_screen.dart'
    as _i7;
import 'package:collection/collection.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

/// generated route for
/// [_i1.BottomNavgitorScreen]
class BottomNavgitorRoute extends _i9.PageRouteInfo<BottomNavgitorRouteArgs> {
  BottomNavgitorRoute({_i10.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        BottomNavgitorRoute.name,
        args: BottomNavgitorRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'BottomNavgitorRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BottomNavgitorRouteArgs>(
        orElse: () => const BottomNavgitorRouteArgs(),
      );
      return _i1.BottomNavgitorScreen(key: args.key);
    },
  );
}

class BottomNavgitorRouteArgs {
  const BottomNavgitorRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'BottomNavgitorRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BottomNavgitorRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.CarComparisonScreen]
class CarComparisonRoute extends _i9.PageRouteInfo<CarComparisonRouteArgs> {
  CarComparisonRoute({
    _i11.Key? key,
    required dynamic car1,
    required dynamic car2,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         CarComparisonRoute.name,
         args: CarComparisonRouteArgs(key: key, car1: car1, car2: car2),
         initialChildren: children,
       );

  static const String name = 'CarComparisonRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarComparisonRouteArgs>();
      return _i2.CarComparisonScreen(
        key: args.key,
        car1: args.car1,
        car2: args.car2,
      );
    },
  );
}

class CarComparisonRouteArgs {
  const CarComparisonRouteArgs({
    this.key,
    required this.car1,
    required this.car2,
  });

  final _i11.Key? key;

  final dynamic car1;

  final dynamic car2;

  @override
  String toString() {
    return 'CarComparisonRouteArgs{key: $key, car1: $car1, car2: $car2}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CarComparisonRouteArgs) return false;
    return key == other.key && car1 == other.car1 && car2 == other.car2;
  }

  @override
  int get hashCode => key.hashCode ^ car1.hashCode ^ car2.hashCode;
}

/// generated route for
/// [_i3.CarsDetails]
class CarsDetails extends _i9.PageRouteInfo<CarsDetailsArgs> {
  CarsDetails({
    _i10.Key? key,
    required List<String> imageUrl,
    required dynamic car,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         CarsDetails.name,
         args: CarsDetailsArgs(key: key, imageUrl: imageUrl, car: car),
         initialChildren: children,
       );

  static const String name = 'CarsDetails';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarsDetailsArgs>();
      return _i3.CarsDetails(
        key: args.key,
        imageUrl: args.imageUrl,
        car: args.car,
      );
    },
  );
}

class CarsDetailsArgs {
  const CarsDetailsArgs({this.key, required this.imageUrl, required this.car});

  final _i10.Key? key;

  final List<String> imageUrl;

  final dynamic car;

  @override
  String toString() {
    return 'CarsDetailsArgs{key: $key, imageUrl: $imageUrl, car: $car}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CarsDetailsArgs) return false;
    return key == other.key &&
        const _i12.ListEquality<String>().equals(imageUrl, other.imageUrl) &&
        car == other.car;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i12.ListEquality<String>().hash(imageUrl) ^
      car.hashCode;
}

/// generated route for
/// [_i4.DiscoveryScreen]
class DiscoveryRoute extends _i9.PageRouteInfo<DiscoveryRouteArgs> {
  DiscoveryRoute({_i11.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        DiscoveryRoute.name,
        args: DiscoveryRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'DiscoveryRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DiscoveryRouteArgs>(
        orElse: () => const DiscoveryRouteArgs(),
      );
      return _i4.DiscoveryScreen(key: args.key);
    },
  );
}

class DiscoveryRouteArgs {
  const DiscoveryRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'DiscoveryRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DiscoveryRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i5.HomeScreeen]
class HomeScreeen extends _i9.PageRouteInfo<HomeScreeenArgs> {
  HomeScreeen({_i10.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        HomeScreeen.name,
        args: HomeScreeenArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeScreeen';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeScreeenArgs>(
        orElse: () => const HomeScreeenArgs(),
      );
      return _i5.HomeScreeen(key: args.key);
    },
  );
}

class HomeScreeenArgs {
  const HomeScreeenArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'HomeScreeenArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeScreeenArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i10.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i6.LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i7.OnbodingScreen]
class OnbodingRoute extends _i9.PageRouteInfo<OnbodingRouteArgs> {
  OnbodingRoute({_i10.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        OnbodingRoute.name,
        args: OnbodingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnbodingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnbodingRouteArgs>(
        orElse: () => const OnbodingRouteArgs(),
      );
      return _i7.OnbodingScreen(key: args.key);
    },
  );
}

class OnbodingRouteArgs {
  const OnbodingRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'OnbodingRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OnbodingRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i8.SignupScreen]
class SignupRoute extends _i9.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i10.Key? key, List<_i9.PageRouteInfo>? children})
    : super(
        SignupRoute.name,
        args: SignupRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SignupRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignupRouteArgs>(
        orElse: () => const SignupRouteArgs(),
      );
      return _i8.SignupScreen(key: args.key);
    },
  );
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'SignupRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SignupRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}
