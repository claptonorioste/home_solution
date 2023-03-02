import 'package:example/src/app/pages/messages/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class MessagesPage extends View {
  const MessagesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MessagesPageState createState() => MessagesPageState();
}

class MessagesPageState extends ViewState<MessagesPage, MessagesController> {
  MessagesPageState() : super(MessagesController());

  @override
  Widget get view {
    return ControlledWidgetBuilder<MessagesController>(
        builder: (context, controller) {
      return Scaffold(
          key: globalKey,
          appBar: AppBar(
            bottom: PreferredSize(
                child: Divider(
                  color: Color(0xFFF3F3F3),
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                preferredSize: Size.fromHeight(0.5)),
            title: Center(
                child: Text(
              'Messages',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          body: Container(
              color: Colors.white,
              child: Column(
                children: [],
              )));
    });
  }
}
