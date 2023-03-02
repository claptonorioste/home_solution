import 'package:example/src/app/pages/favorites/favorites_view.dart';
import 'package:example/src/app/pages/home/home_view.dart';
import 'package:example/src/app/pages/messages/messages_view.dart';
import 'package:example/src/app/pages/post/post_view.dart';
import 'package:example/src/app/pages/profile/profile_view.dart';
import 'package:flutter/material.dart';

List<Widget> screens() {
  return [
    HomePage(),
    MessagesPage(),
    PostPage(),
    FavoritesPage(),
    ProfilePage(),
  ];
}
