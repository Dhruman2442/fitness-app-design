import 'package:fitness_app_example/Modules/module_SideNav_bar.dart';
import 'package:fitness_app_example/Modules/modules_BottomNav_bar.dart';
import 'package:fitness_app_example/page/progress_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 8),
                    Text(
                      'Good Morning, \nJane',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    Card(
                      elevation: 20,
                      color: Colors.blue.shade50,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.rotate_right,
                              color: Colors.green,
                              size: 50,
                            ),
                            title: Text(
                              "Today's Progress",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: LinearProgressIndicator(
                              value: 0.5,
                            ),
                            trailing: Image.asset('assets/yoga.png'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProgressPage()),
                              );
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_box),
                                          Text(
                                            "Completed Sessions",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box),
                                      Text(
                                        "Pending Sessions",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.red.shade50,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Session 1",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RaisedButton(
                                    color: Colors.red.shade200,
                                    onPressed: () {},
                                    child: Text("Completed")),
                                Text(
                                  "Performed At:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  "8:12",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/pushup.png',
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.yellow.shade50,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Session 2",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RaisedButton(
                                    color: Colors.yellow.shade200,
                                    onPressed: () {},
                                    child: Text("Performed")),
                                Text(
                                  "Enter Pain Score",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.replay_circle_filled)),
                                    RaisedButton(
                                      color: Colors.grey.shade50,
                                      onPressed: () {},
                                      child: Text("Retry"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/crunch.png',
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.green.shade50,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Session 3",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RaisedButton(
                                    color: Colors.green.shade200,
                                    onPressed: () {},
                                    child: Text("Performed")),
                                Text(
                                  "Enter Pain Score",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.replay_circle_filled)),
                                    RaisedButton(
                                      color: Colors.grey.shade50,
                                      onPressed: () {},
                                      child: Text("Retry"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/workout1.png',
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.lime.shade50,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Session 4",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RaisedButton(
                                    color: Colors.lime.shade200,
                                    onPressed: () {},
                                    child: Text("Completed")),
                                Text(
                                  "Performed At:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  "8:12",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/workout2.png',
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.teal.shade50,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Session 5",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RaisedButton(
                                    color: Colors.teal.shade200,
                                    onPressed: () {},
                                    child: Text("Performed")),
                                Text(
                                  "Enter Pain Score",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.replay_circle_filled)),
                                    RaisedButton(
                                      color: Colors.grey.shade50,
                                      onPressed: () {},
                                      child: Text("Retry"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/workout3.png',
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.blue.shade50,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Session 6",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RaisedButton(
                                    color: Colors.blue.shade200,
                                    onPressed: () {},
                                    child: Text("Performed")),
                                Text(
                                  "Enter Pain Score",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.replay_circle_filled)),
                                    RaisedButton(
                                      color: Colors.grey.shade50,
                                      onPressed: () {},
                                      child: Text("Retry"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/yoga.png',
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: nav_bar(),
        bottomNavigationBar: bottom_nav(),
      );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        stretch: true,
        title: Text('DashBoard'),
        centerTitle: true,
        pinned: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressPage()),
                );
              },
              icon: Icon(Icons.person)),
          SizedBox(width: 12),
        ],
      );
}
