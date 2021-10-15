import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: false,
            child: CustomScrollView(slivers: [
              const SliverAppBar(
                  backgroundColor: kPrimaryColor,
                  expandedHeight: 160.0,
                  pinned: false,
                  stretch: false,
                  title: Text('Flutter Architecture App')),
              SliverToBoxAdapter(
                  child: Container(
                      margin: const EdgeInsets.all(kDefaultPadding),
                      padding: const EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dark/Light Theme',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                                'Change the device dark/light mode to see the impact.'),
                          ]))),
            ])));
  }
}
