import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/models/global.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            color: Colors.yellow,
            home: SafeArea(
                child: DefaultTabController(
              length: 3,
              child: new Scaffold(
                body: Stack(children: [
                  TabBarView(
                    children: [
                      new Container(
                        color: darkGreyColor,
                      ),
                      new Container(
                        color: Colors.orange,
                      ),
                      new Container(
                        color: Colors.lightGreen,
                      ),
                      // new Container(
                      //   color: Colors.red,
                      // ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 50),
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Intray",
                            style: intrayTitleStyle,
                          ),
                          Container()
                        ],
                      )),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(
                      top: 132,
                      left: MediaQuery.of(context).size.width * 0.4 - 5,
                    ),
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.add,
                        size: 60,
                      ),
                      backgroundColor: redColor,
                      onPressed: () {},
                    ),
                  )
                ]),
                appBar: AppBar(
                  elevation: 0,
                  title: new TabBar(
                    tabs: [
                      Tab(
                        icon: new Icon(Icons.home),
                      ),
                      Tab(
                        icon: new Icon(Icons.rss_feed),
                      ),
                      Tab(
                        icon: new Icon(Icons.perm_identity),
                      ),
                    ],
                    labelColor: darkGreyColor,
                    unselectedLabelColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.all(5.0),
                    // indicatorColor: Colors.red,/
                  ),
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.white,
              ),
            ))));
  }
}
