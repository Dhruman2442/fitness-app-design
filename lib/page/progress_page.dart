import 'package:fitness_app_example/data/bar_chart.dart';
import 'package:fitness_app_example/page/home_page.dart';
import 'package:fitness_app_example/widget/exercises_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressPage extends StatefulWidget {
  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
            icon: Icon(Icons.arrow_back_ios_outlined)),
        title: Text(
          'Your Activity',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text(
                'You did amazing today! \n   Session 1 Complete',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: new CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 10.0,
                        percent: 0.8,
                        center: new Text(
                          "Accuracy \n      80%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        progressColor: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(children: [
                Expanded(
                  child: new RaisedButton(
                    splashColor: Colors.black,
                    color: Colors.blue,
                    child: new Text(
                      "Play Video",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                Expanded(
                  child: new RaisedButton(
                    splashColor: Colors.black,
                    color: Colors.blue,
                    child: new Text(
                      "Analytics",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: DummyData(),),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Container(
                      child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        left: 10,
                      )),
                      Text(
                        'Set Details',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      // Container(
                      //   width: 482,
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       RaisedButton.icon(
                      //           onPressed: () {},
                      //           icon: Icon(
                      //             Icons.circle,
                      //             color: Colors.green,
                      //           ),
                      //           color: Colors.white,
                      //           elevation: 0,
                      //           label: Text("Completed")),
                      //       RaisedButton.icon(
                      //           onPressed: () {},
                      //           icon: Icon(
                      //             Icons.circle,
                      //             color: Colors.yellow,
                      //           ),
                      //           color: Colors.white,
                      //           elevation: 0,
                      //           label: Text("Skipped")),
                      //       RaisedButton.icon(
                      //           onPressed: () {},
                      //           icon: Icon(
                      //             Icons.circle,
                      //             color: Colors.red,
                      //           ),
                      //           color: Colors.white,
                      //           elevation: 0,
                      //           label: Text("Incomplete")),
                      //     ],
                      //   ),
                      // ),
                    ],
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'Full Body',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Sets Completed :- 20',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: Image.asset('assets/crunch.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Upper Body',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Sets Completed :- 16',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: Image.asset('assets/workout1.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'Legs',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Sets Completed :- 20',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: Image.asset('assets/workout2.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      color: Colors.red,
                    ),
                    title: Text(
                      'Stretching',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Sets Completed :- 16',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: Image.asset('assets/workout3.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),

          ]),
        ),
      ),
    );
  }
}
