import 'package:flutter/material.dart';
import 'package:flutter_poc_app/common/menu_state.dart';
import 'package:flutter_poc_app/widgets/app_bar.dart';
import 'package:flutter_poc_app/widgets/bottom_navigation_bar.dart';

class DealScreen extends StatelessWidget {
  const DealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SharedAppBar(),
      body: Center(
        child: Text('From deal page'),
      ),
    );
  }
}
