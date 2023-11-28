import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App UI',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
          scrimColor: Colors.transparent,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Messages',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Online',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Groups',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 15),
              height: 220,
              decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Favorite contacts',
                          style: TextStyle(color: Colors.white)),
                      IconButton(
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Aisha', 'flower.png'),
                        buildContactAvatar('Zuri', 'slo.png'),
                        buildContactAvatar('Mateo', 'ava.png'),
                        buildContactAvatar('Sifa', 'flower.png'),
                        buildContactAvatar('Alpha', 'googlelogo.png'),
                        buildContactAvatar('Merv', 'slo.png'),
                        buildContactAvatar('Soan', 'tar.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
                child: ListView(
                  padding: const EdgeInsets.only(left: 25),
                  children: [
                    buildConversationRow(
                        'Aisha', 'Quoi de neuf', 'flower.png', 3),
                    buildConversationRow(
                        'Bae', 'Yooh bae, On se capte ce soir', 'tar.png', 1),
                    buildConversationRow('Mateo', 'bien bien', 'ava.png', 0),
                    buildConversationRow('Zuri', 'Apana', 'slo.png', 2),
                    buildConversationRow(
                        'Nathan', 'cool mamy', 'flower.png', 0),
                    buildConversationRow(
                        'Brother', 'Quoi de neuf', 'googlelogo.png', 4),
                    buildConversationRow('Merv', 'inchallah', 'ava.png', 1),
                    buildConversationRow('dad', 'Amen amen', 'slo.png', 3),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: const Icon(
          Icons.edit_outlined,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      drawer: const Drawer(
        width: 275,
        backgroundColor: Color(0xFF171717),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      UserAvatar(filename: 'flower.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Amin Diallo', style: TextStyle(color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DrawerItem(title: 'Account', icon: Icons.key),
                  DrawerItem(title: 'Chats', icon: Icons.chat_bubble),
                  DrawerItem(title: 'Notifications', icon: Icons.notifications),
                  DrawerItem(title: 'Data and Storage', icon: Icons.storage),
                  DrawerItem(title: 'Help', icon: Icons.help),
                  Divider(
                    height: 35,
                    color: Colors.greenAccent,
                  ),
                  DrawerItem(
                      title: 'Invite a friend',
                      icon: Icons.people_alt_outlined),
                ],
              ),
              DrawerItem(title: 'Log Out', icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 4),
              child: Column(
                children: [
                  const Text(
                    '08:22',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: const Color.fromRGBO(105, 240, 174, 1),
                      child: Text(msgCount.toString(),
                          style: const TextStyle(
                              fontSize: 11, color: Colors.white)),
                    )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 55,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({super.key, required this.filename});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/$filename').image,
      ),
    );
  }
}
