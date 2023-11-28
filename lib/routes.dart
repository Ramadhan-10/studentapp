import 'package:flutter/cupertino.dart';
import 'package:studentapp/screens/splash_screen/splash_screen.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/signup_screen/signup_screen.dart';
import 'screens/assignment_screen/assignment_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/datesheet_screen/datesheet_screen.dart';
import 'screens/my_profile/my_profile.dart';
import 'screens/about_screen/about_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
  AboutScreen.routeName: (context) => AboutScreen(),
};
