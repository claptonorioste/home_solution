import 'package:example/src/app/pages/favorites/favorites_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class FavoritesPage extends View {
  const FavoritesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  FavoritesPageState createState() => FavoritesPageState();
}

class FavoritesPageState extends ViewState<FavoritesPage, FavoritesController> {
  FavoritesPageState() : super(FavoritesController());

  @override
  Widget get view {
    return ControlledWidgetBuilder<FavoritesController>(
        builder: (context, controller) {
      return Scaffold(
          key: globalKey,
          body: Container(
            color: Colors.green,
          ));
    });
  }
}
