import 'package:flutter/material.dart';
import '../services/navigation.dart';

abstract class BaseStateless extends StatelessWidget {
  BaseStateless({Key? key}) : super(key: key);

  /// Navigator
  final NavigationService nav = NavigationService.instance;

  /// Set screen size
  // late final double height;
  // late final double width;

  // void setSize(BuildContext context) {
  //   height = MediaQuery.of(context).size.height;
  //   width = MediaQuery.of(context).size.width;
  // }

  /// Body of the page
  Widget body();

  @override
  Widget build(BuildContext context) {
    // setSize(context);
    return body();
  }
}
