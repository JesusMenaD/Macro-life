import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fep/screen/principal/principal_controller.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PrincipalController>(builder: ((controller) {
      return Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/Logo_HANK_vertical_negativo.png',
            width: 200,
          ),
        ),
      );
    }));
  }
}
