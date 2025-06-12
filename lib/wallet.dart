import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<IconData> iconpic = [Icons.lock_open, Icons.notification_add_outlined, CupertinoIcons.mail,
  CupertinoIcons.question_circle, Icons.block
];

List<String> iconlist = [
  "Change PIN", "Notification and Email", "Invite to Pay Synce", "Privacy Policy", "Deleted account"
];

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Pay Synce settings",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 60.0),
                  child: Container(
                    height: 180,
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Text("Katherine Smith",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("+22986465432",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("add email address",
                                style: TextStyle(
                                  color: Colors.indigo.shade300,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Text("Add your email address to receive exclusive Pay Synce offers",
                          style: TextStyle(color: Colors.grey,fontSize: 9),)

                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/aa.jpg"),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: iconlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        dense: true,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                        leading: Icon(
                          iconpic[index],
                          color: index == 4 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          iconlist[index],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: index == 4 ? Colors.red : Colors.black,
                          ),
                        ),
                        trailing:
                        Icon(Icons.navigate_next, color: Colors.grey),
                      ),
                      Divider(height: 10),
                    ],
                  );
                },
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text("Version 2.1.2(9)",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text("Released on February 04,2021",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5,),
                  Container(height: 8,width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.black
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
