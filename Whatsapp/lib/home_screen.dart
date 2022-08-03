import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            centerTitle: false,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                )
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder:
              (context,) => [
                PopupMenuItem(child: Text('New Group'), value: 1,),
                PopupMenuItem(child: Text('Settings'), value: 2,),
                PopupMenuItem(child: Text('Logout'), value: 3,),
              ]
              ),
              SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
            children: [
              Text("Camera"),
              ListView.builder(
                  itemCount: 40,
                  itemBuilder: (context, index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      title: Text("John Wick"),
                      subtitle: Text("Where are you now ?"),
                      trailing: Text("05:24 PM"),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 40,
                  itemBuilder: (context, index){
                    if(index == 0){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("New Updates"),
                            ),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 3, color: Colors.green)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage("https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                ),
                              ),
                              title: Text("John Wick"),
                              subtitle: Text("32 min ago"),
                            ),
                          ],
                        ),
                      );
                    }else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: Colors.green)
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                        title: Text("John Wick"),
                        subtitle: Text("32 min ago"),
                      );
                    }
                  }
              ),
              ListView.builder(
                  itemCount: 40,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      title: Text("John Wick"),
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_missed),
                          SizedBox(width: 5,),
                          Text("Today 4:17 PM")
                        ],
                      ),
                      trailing: Icon(index /2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}
