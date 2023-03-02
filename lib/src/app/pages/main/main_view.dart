import 'package:example/src/app/pages/main/widgets/nav_bar_items.dart';
import 'package:example/src/app/pages/main/widgets/screens.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import '../../../data/repositories/data_users_repository.dart';

class MainPage extends View {
  const MainPage({Key key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ViewState<MainPage, MainController> {
  MainPageState() : super(MainController(DataUsersRepository()));

  @override
  Widget get view {
    return ControlledWidgetBuilder<MainController>(
        builder: (context, controller) {
      return Scaffold(
          key: globalKey,
          body: PersistentTabView(
            context,
            controller: controller.tabController,
            screens: screens(),
            items: navBarItems(),
            navBarStyle: NavBarStyle.style15,
            decoration: NavBarDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              colorBehindNavBar: Colors.white,
            ),
          ));
    });
  }
}
