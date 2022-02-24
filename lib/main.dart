import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        backgroundColor: const Color(0XFFFDF0D5),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Isha',
      '+91-6306637123',
      '2025isha@gmail.com'
    ];
    final List<String> entries1 = <String>['Name', 'Phone no.', 'Email-ID'];
    final List<String> icon = <String>['profile', 'phone', 'email'];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          leading: const Icon(Icons.reorder),
          title: Image.asset(
            'assets/logo.png',
            scale: 3,
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF30638E),
          elevation: 0,
          titleTextStyle: const TextStyle(
              fontSize: 30, color: Colors.red, fontWeight: FontWeight.w900),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.face),
              ),
              Tab(icon: Icon(Icons.assignment)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF5e60ce), Color(0xFF64dfdf)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              'Welcome Isha!',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/my-profile-icon-png-2.jpg",
                            scale: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.all(25),
                            width: 600,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: const Color(0xFF0b090a)),
                            padding: const EdgeInsets.all(8),
                            child: const Center(
                              child: Text(
                                "Profile",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor),
                      child: ListView.separated(
                        itemCount: entries.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            tileColor: Colors.amber,
                            leading: Image.asset('assets/${icon[index]}.png',
                                scale: 1),
                            title: Text(
                              "${entries[index]}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            subtitle: Text("${entries1[index]}"),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                          color: Color(0XFF1F2041),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).backgroundColor),
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xFFD00000),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        "3 Hackathons Won",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xFFDC2F02),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        "5 Events Hosted",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xFFFAA307),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        "10 Blogs Uploaded",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xFFFFBA08),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        "5 Repositories     Updated",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xFF0096C7),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        "10th Practice Streak",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: const Color(0xFF48CAE4)),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        "4 Badges Earned",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
