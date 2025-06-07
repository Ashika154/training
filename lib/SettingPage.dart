import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<IconData> iconpic = [
  Icons.lock_open, Icons.notification_add_outlined, CupertinoIcons.mail, CupertinoIcons.question_circle, Icons.block
];

List<String> iconlist = ["Change pin", "Notification and Email", "Invite to Pay Synce", "Privacy Policy", "Deleted account"];

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Pay Synce settings",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 60,
                    child: Container(
                      height: 160,
                      width: 330,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/aa.jpg"),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add, color: Colors.white, size: 25),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Column(
                      children: [
                        Text("Katherine Smith",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("+22986465432",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Katherine.smith@gmail.com",
                              style: TextStyle(
                                color: Colors.indigo.shade300,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              CupertinoIcons.pencil_circle, size: 18, color: Colors.indigo.shade300,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 130),
            Expanded(
              child: ListView.builder(
                itemCount: iconlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          iconpic[index],
                          color: index == 4 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          iconlist[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: index == 4 ? Colors.red : Colors.black,
                          ),
                        ),
                        trailing: Icon(Icons.navigate_next, color: Colors.grey),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
