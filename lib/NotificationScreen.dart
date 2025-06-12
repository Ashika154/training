import 'package:flutter/material.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  bool muteAll = false;
  bool notificationSound = false;
  bool notificationPopup = false;
  bool vibration = false;
  bool hideNotificationInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Notifications",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 18.0, right: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notification alerts",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SwitchListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              title: Text("Notification Sound", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              subtitle: Text("Play sounds for LammaPay activity", style: TextStyle(fontSize: 10, color: Colors.grey)),
              value: notificationSound,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              onChanged: muteAll ? null : (value) {
                setState(() {
                  notificationSound = value;
                });
              },
            ),
            Divider(),
            Text("Choose notification tone", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
            Row(
              children: [
                Text(
                  "SIMToolkitPositiveACK",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(width: 170),
                Icon(Icons.arrow_forward, color: Colors.grey),
              ],
            ),
            Divider(),
            SwitchListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              title: Text("Notification popup", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              subtitle: Text("Showing popup for LammaPay activity", style: TextStyle(fontSize: 10, color: Colors.grey)),
              value: notificationPopup,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              onChanged: muteAll ? null : (value) {
                setState(() {
                  notificationPopup = value;
                });
              },
            ),
            Divider(),
            SwitchListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              title: Text("Vibration", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              subtitle: Text(
                "Vibrate for LammaPay activity while app is running",
                style: TextStyle(fontSize: 9, color: Colors.grey),
              ),
              value: vibration,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              onChanged: muteAll ? null : (value) {
                setState(() {
                  vibration = value;
                });
              },
            ),
            Divider(),
            Text(
              "Notification text",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              title: Text("Hide notification info", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              subtitle: Text(
                "Hide notification info when receive push notification",
                style: TextStyle(fontSize: 9, color: Colors.grey),
                maxLines: 1,
              ),
              value: hideNotificationInfo,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              onChanged: muteAll ? null : (value) {
                setState(() {
                  hideNotificationInfo = value;
                });
              },
            ),
            Divider(),
            SizedBox(height: 10),
            Text(
              "Help",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Notifications not working?", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
            Row(
              children: [
                Text(
                  "Learn more in our help center",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(width: 130),
                Icon(Icons.arrow_forward, color: Colors.grey),
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            SwitchListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              title: Row(
                children: [
                  Icon(Icons.notifications_off_outlined),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Mute all notifications", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              value: muteAll,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  muteAll = value;
                });
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
