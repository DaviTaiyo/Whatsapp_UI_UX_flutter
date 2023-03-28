import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/CallsWidget.dart';
import 'package:whatsapp_clone/Widgets/chatsWidget.dart';
import 'package:whatsapp_clone/Widgets/statusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Whatsapp',
                  style: TextStyle(fontSize: 21),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top: 12, right: 15),
                  child: Icon(
                    Icons.search,
                    size: 28,
                  ),
                ),
                PopupMenuButton(
                  onSelected: (result) {
                    if (result == 5) {
                      Navigator.pushNamed(context, "settingPage");
                    }
                  },
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New Broadcast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked Devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      width: 25,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      //padding: EdgeInsets.all(10),
                      width: 90,
                      child: Tab(
                        child: Row(children: [
                          Text('Chats'),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '11',
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 14,
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      width: 85,
                      child: Tab(
                        child: Text('Status'),
                      ),
                    ),
                    Container(
                      width: 85,
                      child: Tab(child: Text('calls')),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.black,
                    ),
                    ChatWidget(),
                    StatusWidget(),
                    CallWidget()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
