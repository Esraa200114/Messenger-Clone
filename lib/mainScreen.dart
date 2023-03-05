import 'package:flutter/material.dart';
import 'package:messenger_clone/people.dart';
import 'package:messenger_clone/profile.dart';
import 'package:messenger_clone/stories.dart';

import 'calls.dart';
import 'chats.dart';

void main() {
  runApp(mainScreen());
}

class mainScreen extends StatefulWidget {
  @override
  _mainScreen createState() => _mainScreen();
}

class _mainScreen extends State<mainScreen> {
  int _currentIndex = 0;

  final appbar = [
    AppBar(
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/black.jpg'),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 9,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      title: Text(
        'Chats',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    AppBar(
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/black.jpg'),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 9,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      title: Text(
        'Calls',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.videocam_rounded,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    AppBar(
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/black.jpg'),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 9,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      title: Text(
        'People',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.contacts_rounded,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    AppBar(
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/black.jpg'),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 9,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      title: Text(
        'Stories',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.facebook,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ];

  final tabs = [
    Container(
      color: Colors.white,
      child: chats(),
    ),
    calls(),
    people(),
    stories(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar[_currentIndex],
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.messenger_rounded,
              ),
              label: 'Chats',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.videocam_rounded,
              ),
              label: 'Calls',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt_rounded,
                ),
                label: 'People',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.amp_stories_rounded,
                ),
                label: 'Stories',
                backgroundColor: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
