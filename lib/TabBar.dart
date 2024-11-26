import 'package:flutter/material.dart';

myTabBar(
  TabController tabController, BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: TabBar(
            controller: tabController,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: Theme.of(context).textTheme.bodyLarge,
            unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
            indicatorColor:
              Color.fromARGB(255, 255, 193, 203), // Pink indicator for selected tab
            labelColor: 
              Color.fromARGB(255, 253, 199, 255), // White color for selected tab text
            unselectedLabelColor:
              Color.fromARGB(255, 241, 216, 255), // Lighter white for unselected tab
            tabs: const[
                Tab(
                    text: "Chats",
                ),
                Tab(
                    text: "Group",
                ),
                Tab(
                    text: "Calls",
                )
            ],
        ),
      //   Expanded(
      //     child: TabBarView(
      //       children: [
      //         Chatlist(), // The chat tab view
      //           Center(
      //             child: Text("Group")
      //           ), // Group tab view placeholder
      //        ],
      //     ),
      //  ),
    );
}