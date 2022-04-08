import 'package:fitness_app_example/page/progress_page.dart';
import 'package:flutter/material.dart';

class bottom_nav extends StatefulWidget {
  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return BottomAppBar(
      child: Container(
        height: 60,
        width: 100,
        margin: EdgeInsets.only(left: 30,right: 30),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(

              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pending_actions_outlined,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProgressPage()));},
                    icon: const Icon(
                      Icons.person,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class floatactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {}));
      },
      backgroundColor: Colors.white,
      child: const Icon(Icons.add),
      foregroundColor: Colors.black,
      tooltip: 'Search Here',
    );
  }
}
//
// class floatactions_add_event extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: () =>
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {})),
//       backgroundColor: Colors.white,
//       child: const Icon(Icons.add),
//       foregroundColor: Colors.black,
//     );
//   }
// }
