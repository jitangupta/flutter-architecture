import 'package:flutter/material.dart';
import 'package:flutter_poc_app/screens/deal_screen.dart';
import 'package:flutter_poc_app/screens/menu_screen.dart';
import 'package:flutter_poc_app/screens/offers_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [OffersScreen(), DealScreen()];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _itemTapped(int selectedIndex) {
    if (selectedIndex == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MenuScreen();
      }));
    } else {
      _pageController.jumpToPage(selectedIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _itemTapped,
        currentIndex: _selectedIndex,
        elevation: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/articles.svg',
                width: 25,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
            title: Text('Offers',
                style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.blue : Colors.grey)),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/deals.svg',
                width: 25,
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
            title: Text('Deals',
                style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.blue : Colors.grey)),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/menu.svg',
                width: 25,
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
            title: Text('Menu'),
          ),
        ],
      ),
    );
  }
}
