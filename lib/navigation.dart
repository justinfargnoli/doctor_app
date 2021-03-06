import 'package:doctorapp/patients/ui/patients.dart';
import 'package:flutter/material.dart';

import 'auth/ui/auth.dart';
import 'auth/ui/login.dart';
import 'auth/ui/sign_up.dart';
import 'central_screen/ui/central_screen.dart';

class Routes {
  static const patients = 'patients';
  static const centralScreen = 'central_screen';
  static const auth = 'auth';
  static const signUp = 'auth/sign_up';
  static const login = 'auth/login';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  assert(settings.arguments == null);
  switch (settings.name) {
    case Routes.patients:
      return MaterialPageRoute(builder: (context) => Patients());
    case Routes.centralScreen:
      return MaterialPageRoute(builder: (context) => CentralScreen());
    case Routes.auth:
      return MaterialPageRoute(builder: (context) => Auth());
    case Routes.signUp:
      return MaterialPageRoute(builder: (context) => SignUp());
    case Routes.login:
      return MaterialPageRoute(builder: (context) => Login());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedRoute(settings.name));
  }
}

class UndefinedRoute extends StatelessWidget {
  final String undefinedRoute;

  UndefinedRoute(this.undefinedRoute);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              'Undefined route: ($undefinedRoute). \nThis is a dart:core/errors Error.')),
      backgroundColor: Colors.red,
    );
  }
}
