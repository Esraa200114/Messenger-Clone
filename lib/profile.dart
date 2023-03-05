import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(profile());
}

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Me',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/black.jpg'),
                          radius: 50,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 15,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Esraa Tarek M',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.dark_mode_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Dark mode',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      'Off',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent,
                      child: Icon(
                        Icons.sms_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    title: Text(
                      'Message requests',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Icon(
                        Icons.archive_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Archived chats',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 12,
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.lightGreenAccent,
                                radius: 6,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      'Active status',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      'On',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.alternate_email_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    title: Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      'info@gmail.com',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Services',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Preferences',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent,
                      child: Icon(
                        Icons.security_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Privacy',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(
                        Icons.tag_faces_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Avatar',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Notification & sounds',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      child: Icon(
                        Icons.signal_cellular_alt_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Data saver',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.amp_stories_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Story',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(
                        Icons.messenger_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'SMS',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent,
                      child: Icon(
                        Icons.group,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Phone contacts',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(
                        Icons.photo_size_select_actual_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Photos & media',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.auto_awesome_motion_rounded,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Chat heads',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit_attributes_rounded,
                      color: Colors.blueAccent,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(
                        Icons.swap_horiz_rounded,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Switch account',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigoAccent,
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Account settings',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      child: Icon(
                        Icons.report_problem,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Report Technical Problem',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent,
                      child: Icon(
                        Icons.help_rounded,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.description_rounded,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Legal & policies',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
