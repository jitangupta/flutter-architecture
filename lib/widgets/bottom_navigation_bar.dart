import 'package:flutter/material.dart';
import 'package:flutter_poc_app/common/menu_state.dart';
import 'package:flutter_poc_app/screens/deal_screen.dart';
import 'package:flutter_poc_app/screens/offers_screen.dart';
import 'package:flutter_poc_app/screens/menu_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SharedBottomNavigationBar extends StatelessWidget {
  final MenuState selectedMenu;
  const SharedBottomNavigationBar({Key? key, required this.selectedMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/articles.svg',
                width: 25,
                color: selectedMenu == MenuState.article
                    ? Colors.blue
                    : Colors.blue),
            label: 'Article',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/deals.svg',
                width: 25,
                color:
                    selectedMenu == MenuState.deal ? Colors.blue : Colors.grey),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/menu.svg',
                width: 25,
                color:
                    selectedMenu == MenuState.menu ? Colors.blue : Colors.grey),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          if ((selectedMenu == MenuState.article && value == 0) ||
              (selectedMenu == MenuState.deal && value == 1) ||
              (selectedMenu == MenuState.menu && value == 2)) return;

          switch (value) {
            case 0:
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => OffersScreen()),
                  (Route<dynamic> route) => false);
              break;

            case 1:
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => DealScreen()),
                  (Route<dynamic> route) => false);
              break;

            case 2:
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                  (Route<dynamic> route) => false);
              break;
          }
        });
  }
}
