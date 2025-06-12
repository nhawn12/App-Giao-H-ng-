import 'package:flutter/material.dart';

class Dimensions {
  static late double screenHeight;
  static late double screenWidth;

  static late double pageView;
  static late double height10;
  static late double height15;
  static late double height20;
  static late double height30;
  static late double height45;

  static late double width10;
  static late double width15;
  static late double width20;
  static late double width30;

  // Font size
  static late double font16;
  static late double font20;

  // Radius
  static late double radius15;

  // Icon size
  static late double iconSize24;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    pageView = screenHeight / 2.64;
    height10 = screenHeight / 84.4;
    height15 = screenHeight / 56.27;
    height20 = screenHeight / 42.2;
    height30 = screenHeight / 28.13;
    height45 = screenHeight / 18.76;

    width10 = screenWidth / 84.4;
    width15 = screenWidth / 56.27;
    width20 = screenWidth / 42.2;
    width30 = screenWidth / 28.13;

    font16 = screenHeight / 52.75;
    font20 = screenHeight / 42.2;

    radius15 = screenHeight / 56.27;
    iconSize24 = screenHeight / 35.17;
  }
}

