
import 'package:CraftyBay/presentation/ui/screens/auth_screens/email_verification_screem.dart';
import 'package:CraftyBay/presentation/ui/screens/home.dart';
import 'package:CraftyBay/presentation/utilities/const_string.dart';
import 'package:CraftyBay/presentation/utilities/resources_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.offAll(const EmailVerificationScreen());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(ImageAssets.craftyBayLogoSVG),
          ),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(height: 20,),
          const Text(ConstString.appVersion),
          const SizedBox(height: 20,),

        ],
      ),
    );
  }
}