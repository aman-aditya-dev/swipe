import 'package:flutter/material.dart';

import '../../common/base_image.dart';
import '../../common/image_asset.dart';
import '../../themes/style.dart';
import '../categories/categories_screen.dart';
import '../more/more_menu.dart';
import '../news/news.dart';
import '../quiz/quiz.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedTabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  void _handleNavigationToWallet() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Slide & Swipe',
          style: context.textTheme.h4.copyWith(
            color: ColorShades.amber,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _handleNavigationToWallet,
            icon: BaseImage(
              asset: LocalAsset(
                url: 'assets/images/token.png',
              ),
            ),
          )
        ],
      ),
      body: SafeArea(child: _getBody(context)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    Map<BottomTabType, Widget> _pages = {
      BottomTabType.news: News(),
      BottomTabType.categories: Categories(),
      BottomTabType.quiz: Quiz(),
      BottomTabType.finance: Quiz(),
      BottomTabType.more: MoreMenu(),
    };

    return IndexedStack(
      key: ValueKey('creator_home'),
      children: _pages.values.toList(),
      index: _selectedTabIndex,
    );
  }
}
