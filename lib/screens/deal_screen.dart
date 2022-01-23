import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:flutter_poc_app/models/deal_model.dart';
import 'package:flutter_poc_app/services/sample_service.dart';
import 'package:flutter_poc_app/widgets/app_bar.dart';

class DealScreen extends StatelessWidget {
  SampleService service = SampleService();
  DealScreen({Key? key}) : super(key: key);

  static const int pageSize = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(),
      body: PagewiseListView<Deal>(
          pageSize: pageSize,
          itemBuilder: _itemBuilder,
          pageFuture: (pageIndex) => service.getNewDeals(pageIndex!)),
    );
  }

  Widget _itemBuilder(context, Deal entry, _) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.brown[200],
          ),
          title: Text(entry.title),
          subtitle: Text(entry.description),
        ),
        const Divider()
      ],
    );
  }
}
