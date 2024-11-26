import 'package:flutter/material.dart';
import 'package:project_app3/Config/images.dart';
import 'package:project_app3/Witget/ChatTile.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/chatP");
          },
          child: ChatTile(
            imageUrl: AssetsImage.girlPic, 
            name: "Ping", 
            lastChat: "I'm so sorry", 
            lastTime: "09:23",
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/chatP");
          },
          child: ChatTile(
            imageUrl: AssetsImage.boyPic, 
            name: "Tiga", 
            lastChat: "I'm so sorry", 
            lastTime: "09:23",
          ),
        ),
      ],
    );
  }
}
