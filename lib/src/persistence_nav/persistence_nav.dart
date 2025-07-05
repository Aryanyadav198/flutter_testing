import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/src/screens/pages/home_page.dart';
import 'package:flutter_testing/src/screens/pages/profile_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PersistenceNavScreen extends StatefulWidget {
  const PersistenceNavScreen({super.key});

  @override
  State<PersistenceNavScreen> createState() => _PersistenceNavScreenState();
}

class _PersistenceNavScreenState extends State<PersistenceNavScreen> {
  late PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  List<Widget> _buildScreens() {
    return [HomePage(), ProfileScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // scrollController: _scrollController1,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //     initialRoute: "/",
        //     routes: {
        //     "/first": (final context) => const MainScreen2(),
        //     "/second": (final context) => const MainScreen3(),
        //     },
        // ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // scrollController: _scrollController2,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //     initialRoute: "/",
        //     routes: {
        //     "/first": (final context) => const MainScreen2(),
        //     "/second": (final context) => const MainScreen3(),
        //     },
        // ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      // popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      // padding: const EdgeInsets.only(top: 8),
      backgroundColor: Color.fromARGB(255, 20, 27, 81),
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property
    );
    ;
  }
}
