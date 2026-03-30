// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:cars_e_commerce/Features/auth/login/presentation/screen/login_screen.dart'
    as _i4;
import 'package:cars_e_commerce/Features/auth/signup/presentation/screen/signup_screen.dart'
    as _i6;
import 'package:cars_e_commerce/Features/cars_details/presentation/screen/cars_details.dart'
    as _i2;
import 'package:cars_e_commerce/Features/comperssion/prsentation/screen/compression_screen.dart'
    as _i1;
import 'package:cars_e_commerce/Features/home/presentation/screen/home.dart'
    as _i3;
import 'package:cars_e_commerce/Features/onBording/presentation/screen/onboding_screen.dart'
    as _i5;
import 'package:collection/collection.dart' as _i10;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.CarComparisonScreen]
class CarComparisonRoute extends _i7.PageRouteInfo<CarComparisonRouteArgs> {
  CarComparisonRoute({
    _i8.Key? key,
    required dynamic car1,
    required dynamic car2,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         CarComparisonRoute.name,
         args: CarComparisonRouteArgs(key: key, car1: car1, car2: car2),
         initialChildren: children,
       );

  static const String name = 'CarComparisonRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarComparisonRouteArgs>();
      return _i1.CarComparisonScreen(
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

  final _i8.Key? key;

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
/// [_i2.CarsDetails]
class CarsDetails extends _i7.PageRouteInfo<CarsDetailsArgs> {
  CarsDetails({
    _i9.Key? key,
    required List<String> imageUrl,
    required dynamic car,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         CarsDetails.name,
         args: CarsDetailsArgs(key: key, imageUrl: imageUrl, car: car),
         initialChildren: children,
       );

  static const String name = 'CarsDetails';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarsDetailsArgs>();
      return _i2.CarsDetails(
        key: args.key,
        imageUrl: args.imageUrl,
        car: args.car,
      );
    },
  );
}

class CarsDetailsArgs {
  const CarsDetailsArgs({this.key, required this.imageUrl, required this.car});

  final _i9.Key? key;

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
        const _i10.ListEquality<String>().equals(imageUrl, other.imageUrl) &&
        car == other.car;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i10.ListEquality<String>().hash(imageUrl) ^
      car.hashCode;
}

/// generated route for
/// [_i3.Home]
class Home extends _i7.PageRouteInfo<HomeArgs> {
  Home({_i9.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        Home.name,
        args: HomeArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'Home';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i3.Home(key: args.key);
    },
  );
}

class HomeArgs {
  const HomeArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'HomeArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i9.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i4.LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i9.Key? key;

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
/// [_i5.OnbodingScreen]
class OnbodingRoute extends _i7.PageRouteInfo<OnbodingRouteArgs> {
  OnbodingRoute({_i9.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        OnbodingRoute.name,
        args: OnbodingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnbodingRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnbodingRouteArgs>(
        orElse: () => const OnbodingRouteArgs(),
      );
      return _i5.OnbodingScreen(key: args.key);
    },
  );
}

class OnbodingRouteArgs {
  const OnbodingRouteArgs({this.key});

  final _i9.Key? key;

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
/// [_i6.SignupScreen]
class SignupRoute extends _i7.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i9.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        SignupRoute.name,
        args: SignupRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SignupRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignupRouteArgs>(
        orElse: () => const SignupRouteArgs(),
      );
      return _i6.SignupScreen(key: args.key);
    },
  );
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i9.Key? key;

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
