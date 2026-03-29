// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:cars_e_commerce/Features/auth/login/presentation/screen/login_screen.dart'
    as _i2;
import 'package:cars_e_commerce/Features/auth/signup/presentation/screen/signup_screen.dart'
    as _i4;
import 'package:cars_e_commerce/Features/home/presentation/screen/home.dart'
    as _i1;
import 'package:cars_e_commerce/Features/onBording/presentation/screen/onboding_screen.dart'
    as _i3;
import 'package:flutter/cupertino.dart' as _i6;

/// generated route for
/// [_i1.Home]
class Home extends _i5.PageRouteInfo<HomeArgs> {
  Home({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        Home.name,
        args: HomeArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'Home';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i1.Home(key: args.key);
    },
  );
}

class HomeArgs {
  const HomeArgs({this.key});

  final _i6.Key? key;

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
/// [_i2.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i2.LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i6.Key? key;

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
/// [_i3.OnbodingScreen]
class OnbodingRoute extends _i5.PageRouteInfo<OnbodingRouteArgs> {
  OnbodingRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        OnbodingRoute.name,
        args: OnbodingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnbodingRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnbodingRouteArgs>(
        orElse: () => const OnbodingRouteArgs(),
      );
      return _i3.OnbodingScreen(key: args.key);
    },
  );
}

class OnbodingRouteArgs {
  const OnbodingRouteArgs({this.key});

  final _i6.Key? key;

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
/// [_i4.SignupScreen]
class SignupRoute extends _i5.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        SignupRoute.name,
        args: SignupRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SignupRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignupRouteArgs>(
        orElse: () => const SignupRouteArgs(),
      );
      return _i4.SignupScreen(key: args.key);
    },
  );
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i6.Key? key;

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
