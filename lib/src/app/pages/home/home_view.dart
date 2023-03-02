import 'package:example/src/app/pages/home/home_controller.dart';
import 'package:example/src/app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomePage extends View {
  const HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ViewState<HomePage, HomeController> {
  HomePageState() : super(HomeController());

  @override
  Widget get view {
    return ControlledWidgetBuilder<HomeController>(
        builder: (context, controller) {
      return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
            ),
          ),
          key: globalKey,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xFFF8F9F8),
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF1F1F1),
                          prefixIcon: Icon(Icons.search),
                          labelText: "What are you looking for?",
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    )),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.filter_list),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          color: controller.selectedFilter == 'All'
                              ? Color(primaryColor)
                              : null,
                          textColor: controller.selectedFilter == 'All'
                              ? Colors.white
                              : Colors.black,
                          onPressed: () {
                            controller.onFilterChanged('All');
                          },
                          child: Text('All'),
                        )),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        color: controller.selectedFilter == 'House'
                            ? Color(primaryColor)
                            : null,
                        textColor: controller.selectedFilter == 'House'
                            ? Colors.white
                            : Colors.black,
                        onPressed: () {
                          controller.onFilterChanged('House');
                        },
                        child: Text('House')),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        color: controller.selectedFilter == 'Condomeniums'
                            ? Color(primaryColor)
                            : null,
                        textColor: controller.selectedFilter == 'Condomeniums'
                            ? Colors.white
                            : Colors.black,
                        onPressed: () {
                          controller.onFilterChanged('Condomeniums');
                        },
                        child: Text('Condomeniums'))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest House Listings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    MaterialButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      elevation: 0,
                      onPressed: () {},
                      height: 30,
                      color: Color(0xFFF0F2F7),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    });
  }
}
