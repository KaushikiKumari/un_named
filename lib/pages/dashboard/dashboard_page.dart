import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:un_named/pages/dashboard/gallery/gallery_page.dart';
import 'package:un_named/pages/dashboard/home/home_page.dart';
import 'package:un_named/pages/dashboard/shop/shop_page.dart';
import 'package:un_named/pages/dashboard/update/update_page.dart';
import 'package:un_named/pages/dashboard/user/user_page.dart';
import 'package:un_named/utils/app_colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var _currentIndex = 0;
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(title: const Text('Home'), icon: Icons.home),
    TitledNavigationBarItem(title: const Text('User'), icon: Icons.person),
    TitledNavigationBarItem(title: const Text('Shop'), icon: Icons.shop),
    TitledNavigationBarItem(title: const Text('Updates'), icon: Icons.update),
    TitledNavigationBarItem(title: const Text('Gallery'), icon: Icons.image),
  ];
  final pages = const [
    HomePage(),
    UserPage(),
    ShopPage(),
    UpdatePage(),
    GalleryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
        // ignore: avoid_print
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //  reverse: navBarMode,
        currentIndex: _currentIndex,
        curve: Curves.linear,
        items: items,
        activeColor: AppColors.mainDarkColor,
        inactiveColor: Colors.blueGrey,
      ),
    );
  }
}
