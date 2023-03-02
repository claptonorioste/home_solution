import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Color(0xFF256885),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.message),
        title: ("Message"),
        activeColorPrimary: Color(0xFF256885),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        title: ("Post"),
        activeColorPrimary: Color(0xFF256885),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: ("Favorites"),
        activeColorPrimary: Color(0xFF256885),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xFF256885),
        inactiveColorPrimary: Colors.black),
  ];
}
