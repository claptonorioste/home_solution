import 'package:example/src/app/pages/post/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class PostPage extends View {
  const PostPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ViewState<PostPage, PostController> {
  ProfilePageState() : super(PostController());

  @override
  Widget get view {
    return ControlledWidgetBuilder<PostController>(
        builder: (context, controller) {
      return Scaffold(
          key: globalKey,
          body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                    width: 360,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/post_image.png'),
                      ),
                    ),
                  )),
                  Text(
                    'Ready to sell your home ?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'Home solutions is making it simpler to sell your home and move forward',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  MaterialButton(
                    minWidth: 200,
                    height: 46,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text("Add a Property"),
                  )
                ]),
          ));
    });
  }
}
