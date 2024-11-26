import 'package:flutter/material.dart';
import 'package:project_app3/Config/images.dart';



class ChatBubble extends StatelessWidget {
  final String massage;
  final String imageUrl;
  final bool isComming;
  final String time;
  final String status;
  const ChatBubble({super.key, required this.massage, required this.isComming, required this.time, required this.status, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: 
          isComming ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
              constraints: BoxConstraints(
              //minWidth: 100,
              maxWidth: MediaQuery.sizeOf(context).width / 1.4,
              ),
              decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF234294)),
              borderRadius: isComming 
              ? BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(10),
              )
              : BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(0),
              )
            ), 
            child: imageUrl == ""
              ? Text(massage)
              :Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(imageUrl),
                  ),
                  const SizedBox(height: 10),
                  Text(massage)],
            )
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: isComming ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              isComming ? Text(
              time,
              style: Theme.of(context).textTheme.labelMedium)
              :Row( 
                children: 
                [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    AssetsImage.chatStatusPNG,
                    width: 13,
                  )
                ]
              )
            ],
          )
        ],
      ),
    );
  }
}