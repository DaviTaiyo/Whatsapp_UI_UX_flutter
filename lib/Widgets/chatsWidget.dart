import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(children: [
          for (int i = 1; i < 12; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatPage");
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile$i.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pessoa$i',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Olá Programador, Como vai você?',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            )
                          ],
                        )),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '15:12',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF0FCE5E),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Color(0xFF0FCE5E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
        ]),
      ),
    );
  }
}
