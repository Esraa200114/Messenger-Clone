import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/chats.dart';

void main() {
  runApp(const calls());
}

class calls extends StatelessWidget {
  const calls({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'No calls',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Recent calls will appear here.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Text(
              'Suggestions',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  for (int i = 0; i < 10; i++)
                    BuildVerticalListViewTile(
                        status[i]['Image'], status[i]['Name']),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget BuildVerticalListViewTile(String image, String name) => Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        tileColor: Colors.white,
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
        trailing: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                    size: 15,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.videocam_rounded,
                    color: Colors.black,
                    size: 15,
                  ),
                  backgroundColor: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
