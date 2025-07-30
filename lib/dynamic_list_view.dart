import 'package:flutter/material.dart';
import 'package:haseeb_project/models/notification.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
      title: "First Notification",
      description: 'First Description',
      time: '11:30 AM',
    ),
    NotificationModel(
      title: "Second Notification",
      description: 'Second Description',
      time: '12:30 AM',
    ),
    NotificationModel(
      title: "Third Notification",
      description: 'Third Description',
      time: '3:30 AM',
    ),
    NotificationModel(
      title: "Third Notification",
      description: 'Third Description',
      time: '3:30 AM',
    ),
    NotificationModel(
      title: "Third Notification",
      description: 'Third Description',
      time: '3:30 AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic List View")),
      body: ListView.builder(
        itemCount: notificationList.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.notifications),
            title: Text(notificationList[i].title.toString()),
            subtitle: Text(notificationList[i].description.toString()),
            trailing: Text(notificationList[i].time.toString()),
          );
        },
      ),
    );
  }
}
