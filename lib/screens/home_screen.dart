import 'package:flutter/material.dart';
import 'package:flutter_poc_app/common/menu_state.dart';
import 'package:flutter_poc_app/widgets/app_bar.dart';
import 'package:flutter_poc_app/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
      bottomNavigationBar:
          const SharedBottomNavigationBar(selectedMenu: MenuState.article),
    );
  }
}
