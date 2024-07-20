import 'package:campuspolls/Screens/Authentication/auth_page.dart';
import 'package:campuspolls/Screens/individual_poll.dart';
import 'package:campuspolls/Screens/main_activity_page.dart';
import 'package:campuspolls/Utils/dynamic_utils.dart';
import 'package:campuspolls/Utils/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  User? user = FirebaseAuth.instance.currentUser;

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      if (user == null) {
        nextPageOnly(context, const AuthPage());
      } else {
        DynamicLinkProvider().initDynamicLink().then((value) {
          if (value == "") {
            nextPageOnly(context, const MainActivityPage());
          } else {
            nextPage(context, IndividualPollsPage(id: value));
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
