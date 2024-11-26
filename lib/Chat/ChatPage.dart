import 'package:flutter/material.dart';
import 'package:project_app3/Chat/Widgets/ChatBubble.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
      appBar:  AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF234294),
          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Centers content
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/boy4_pic.webp'
                      ) // Placeholder image path
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PingPong",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight:
                                FontWeight.w400, // Increased font size and weight
                          ),
                        ),
                        Text("Online",
                        style: TextStyle(
                            color: Color.fromARGB(213, 255, 255, 255),
                            fontSize: 10,
                            fontWeight:
                                FontWeight.w700, // Increased font size and weight
                          ),

                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.call, size: 25), // Larger icon size
                      onPressed: () {
                        // Call functionality
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.video_call, size: 25), // Larger icon size
                      onPressed: () {
                        // Call functionality
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF234294)),
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, // ทำให้ Row กะทัดรัด
            children: [
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined, size: 25), 
                onPressed: () {
                  // ฟังก์ชันเรียกใช้
                },
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type a message...",
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.image, size: 25),
                padding: EdgeInsets.zero, // ลด padding รอบไอคอน
                onPressed: () {
                  // ฟังก์ชันเรียกใช้
                },
              ),
              IconButton(
                icon: const Icon(Icons.send, size: 25),
                padding: EdgeInsets.zero, // ลด padding รอบไอคอน
                onPressed: () {
                  // ฟังก์ชันเรียกใช้
                },
              ),
            ],
          ),
        ),

      
      
      body: Padding(
        padding: EdgeInsets.all(10),

        child: ListView(
          children: const [
            ChatBubble(
              massage: 'Hijjwrud', 
              isComming: true, 
              time: '10:10 AM', 
              status: 'read', 
              imageUrl: '', 
            ),
            ChatBubble(
              massage: 'Hijjwrud', 
              isComming: false, 
              time: '10:10 AM', 
              status: 'read', 
              imageUrl: '', 
            ),
            ChatBubble(
              massage: 'Hijjwrud', 
              isComming: false, 
              time: '10:10 AM', 
              status: 'read', 
              imageUrl: 'https://kpopping.com/documents/0a/1/2053/240911-ENHYPEN-Sunoo-Prada-Beauty-Event-documents-1.jpeg?v=c5692', 
            ),
            ChatBubble(
              massage: 'Hijjwrud', 
              isComming: true, 
              time: '10:10 AM', 
              status: 'read', 
              imageUrl: 'https://kpopping.com/documents/0a/1/2053/240911-ENHYPEN-Sunoo-Prada-Beauty-Event-documents-1.jpeg?v=c5692', 
            )
          ],
        ),
      ),
    );
  }
}

// class Chatpage extends StatelessWidget {
//   const Chatpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Chatpage"),
//       ),
//       body: const Center(
//         child: Text("Welcome to the chat page!"),
//       ),
//     );
//   }
// }


