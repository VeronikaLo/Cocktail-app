import 'package:flutter/material.dart';
import 'dart:async';
import '../helpers/colors.dart';

class CoverScreenPage extends StatefulWidget {
  const CoverScreenPage({super.key});

  @override
  State<CoverScreenPage> createState() => _CoverScreenPageState();
}

class _CoverScreenPageState extends State<CoverScreenPage> {
  //Timer? timer;
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/choosecoctail');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueBackground,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/enter.png"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
