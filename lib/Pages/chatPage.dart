import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/BottomChatBar.dart';

import '../Widgets/chatSample.dart';

class chatPage extends StatelessWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(62),
          child: AppBar(
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
            ),
            leadingWidth: 20,
            title: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "images/profile1.jpg",
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Programador",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.8)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(
                  CupertinoIcons.video_camera_solid,
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(
                  Icons.call,
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(
                  Icons.more_vert,
                  size: 23,
                ),
              )
            ],
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 10, 8, 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                      ]),
                  child: Text(
                    "As mensagens e as chamadas são protegidas com a criptografia de ponta a ponta e ficam somente entre você e os participantes desta conversa. Nem mesmo o Whatsapp pode ler ou ouvi-las. Toque para saber mais.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                chatSample(),
                chatSample(),
                chatSample(),
                chatSample(),
                chatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: BottomChatBar(),
    );
  }
}
