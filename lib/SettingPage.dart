import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<IconData> iconpic = [
  Icons.lock_open, Icons.notification_add_outlined, CupertinoIcons.mail, CupertinoIcons.question_circle, Icons.block];

List<String> iconlist = [
  "Change pin", "Notification and Email", "Invite to Pay Synce", "Privacy Policy", "Deleted account"];

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Pay Synce Setting",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 90),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                Positioned(
                  top: -70,
                  left: 110,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/aa.jpg"),
                  ),
                ),
                Positioned(
                  bottom: 110,
                  right: 110,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.indigo.shade300,
                    child: Icon(Icons.add, color: Colors.white, size: 25),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 60,
                  child: Column(
                    children: [
                      Text("Katherine Smith",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("+22986465432",
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text("Katherine.smith@gmail.com",
                            style: TextStyle(
                                color: Colors.indigo.shade300,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.pencil_circle,
                               size: 18, color: Colors.indigo.shade300),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: iconlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(iconpic[index], color: index == 4 ? Colors.red : Colors.black,),
                        title: Text(
                          iconlist[index],

                          style: TextStyle(fontWeight: FontWeight.bold, color: index == 4 ? Colors.red : Colors.black,),
                        ),
                        trailing:
                        Icon(Icons.navigate_next, color: Colors.grey),
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
