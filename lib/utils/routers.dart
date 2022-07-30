// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tech_idara_assignment_01/src/ad_job/ad_job.dart';
import 'package:tech_idara_assignment_01/src/edit_job/edit_job.dart';
import 'package:tech_idara_assignment_01/src/job_listing/job_listing.dart';
import 'package:tech_idara_assignment_01/src/login/login_screen.dart';
import 'package:tech_idara_assignment_01/src/register/register.dart';
import 'package:tech_idara_assignment_01/utils/routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.jobListingRoute:
        return MaterialPageRoute(builder: (_) => JobListing());
      case Routes.addJobRoute:
        return MaterialPageRoute(builder: (_) => AddJob());
      case Routes.editJobRoute:
        return MaterialPageRoute(builder: (_) => EditJob());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
