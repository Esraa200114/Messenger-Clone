import 'package:flutter/material.dart';

void main() {
  runApp(const chats());
}

List<Map> status = [
  {
    'Image': 'images/brown.jpg',
    'Name': 'Alex Walker',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/orange.jpg',
    'Name': 'Sarah James',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/black.jpg',
    'Name': 'Elle Hanks',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/orange.jpg',
    'Name': 'Sarah James',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/brown.jpg',
    'Name': 'Alex Walker',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/black.jpg',
    'Name': 'Elle Hanks',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/brown.jpg',
    'Name': 'Alex Walker',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/orange.jpg',
    'Name': 'Sarah James',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/black.jpg',
    'Name': 'Elle Hanks',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
  {
    'Image': 'images/orange.jpg',
    'Name': 'Sarah James',
    'Message':
        'Hi There. How are you ? I was wondering what are you up to tonight ?',
    'Time': '3:00 PM',
  },
];

class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search_rounded,
                            size: 15,
                            color: Colors.grey,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 105,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuildHorizontalIcon(),
                      for (int i = 0; i < 10; i++)
                        BuildHorizontalListTile(
                            status[i]['Image'], status[i]['Name'], null),
                    ],
                  ),
                ),
                for (int i = 0; i < 10; i++)
                  BuildVerticalListTile(status[i]['Image'], status[i]['Name'],
                      status[i]['Message'], status[i]['Time']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget BuildHorizontalIcon() => Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.video_call_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Start\ncall',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget BuildHorizontalListTile(String image, String name, Icon? icon) =>
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 50,
            child: Text(
              name,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );

Widget BuildVerticalListTile(
        String image, String name, String message, String time) =>
    ListTile(
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(image),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 8,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
            ],
          ),
        ],
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: Text(
        message,
        maxLines: 1,
        style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            overflow: TextOverflow.ellipsis),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
