import 'package:flutter/material.dart';
import 'package:mejakita_project/widget/navbar.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({super.key});

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 8,),
                Text(
                  'Notifications',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(selectedItem: 2),
    );
  }
}
