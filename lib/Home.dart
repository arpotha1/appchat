import 'package:flutter/material.dart';
//import 'package:project_app2/Chatwindow.dart';
import 'package:project_app3/Witget/ChatList.dart';
import 'package:project_app3/Witget/TabBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this); // ใช้ 'this' เป็น vsync
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Chat",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF234294),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add search functionality
            },
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // More options
            },
            color: Colors.white,
          ),
        ],
        bottom: myTabBar(
          tabController,context,
          // tabs: const [
          //   Tab(child: Text("Chat")),
          //   Tab(child: Text("Group")),
          //   //Tab(child: Text("Settings")),
          // ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new chat functionality
        },
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: const Color(0xFF234294),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
          children: const [
            ChatList(),
            // ListView(
            //   children: const [
            //     ListTile(
            //       title: Text("Name Pingpong"),
            //     )
            //   ],
            // ),
            Center(child: Text("Group")), // Group tab view
            Center(child: Text("Calls")), // Calls tab view
          ],
        ),
      )
    );
  }
}


// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TabController tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//       //length: 2,
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.white),
//           title: const Text("Chat",style: TextStyle(color: Colors.white),),
//           backgroundColor: const Color(0xFF234294),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: () {
//                 // Add search functionality
//               },
//               color: Colors.white,
//             ),
//             IconButton(
//               icon: const Icon(Icons.more_vert),
//               onPressed: () {
//                 // More options
//               },
//               color: Colors.white,
//             ),
//           ],
//           bottom: myTabBar(tabController, context),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             // Add new chat functionality
//           },
//           child:  const Icon(Icons.add,color: Colors.white,)
//           ,backgroundColor: const Color(0xFF234294),
//         ),
//         body: TabBarView(
//           controller: tabController,
//           children: [
//             ListView(
//               children: [
//                 ListTile(
//                   title: Text("Name Pingpong"),
//                 )
//               ],
//             )
//           ]
//         ),
//         // body: const Column(
//         //   children: [
//         //     TabBar(
//         //       indicatorColor:
//         //           Color(0xFFF39DAA), // Pink indicator for selected tab
//         //       labelColor: Color.fromARGB(255, 0, 0, 0), // White color for selected tab text
//         //       unselectedLabelColor:
//         //           Color.fromARGB(179, 0, 0, 0), // Lighter white for unselected tab
//         //       tabs: [
//         //         Tab(
//         //           child: Text("Chat"),
//         //           ),
//         //         Tab(
//         //           child: Text("Group"),
//         //         ),
//         //       ],
              
//         //     ),
//         //     Expanded(
//         //       child: TabBarView(
//         //         children: [
//         //           Chatlist(), // The chat tab view
//         //           Center(
//         //               child: Text("Group")), // Group tab view placeholder
//         //         ],
//         //       ),
//         //     ),
//         //   ],
//         // ), 
//     );
//   }
// }