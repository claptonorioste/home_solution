import 'package:example/src/app/pages/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class ProfilePage extends View {
  const ProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ViewState<ProfilePage, ProfileController> {
  ProfilePageState() : super(ProfileController());

  @override
  Widget get view {
    return ControlledWidgetBuilder<ProfileController>(
        builder: (context, controller) {
      return Scaffold(
          key: globalKey,
          body: Container(
            color: Colors.black,
          ));
    });
  }
}
