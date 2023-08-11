import 'dart:async';

import 'package:cloth_api_ecommerce_getx/VIEWS/HOME_SCREEN/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.toNamed('home'));
  }

  @override
  Widget build(BuildContext context) {
    var responsive = MediaQuery.of(
      context,
    ).size;
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Center(
            child: SizedBox(
                width: responsive.width * 0.8,
                child: FlutterLogo(
                  size: responsive.width * 0.3,
                )),
          )),
    );
  }
}
