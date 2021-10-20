import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String body;
  const CustomCard({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25),
          ),
          Text(body),
        ]));
  }
}
