import 'package:flutter/material.dart';


class nav_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueAccent,

      child: ListView(

        children: <Widget>[
          DrawerHeader(child:
          
          Image.asset('assets/img.png')
          // Text("RootallyAI",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color:Colors.white ),)
          ),
          ListTile(
            onTap: () {

            },
            leading: const Icon(
              Icons.money_outlined,
              color: Colors.white,
            ),
            title: const Text("Daily Analysis",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
            },
            leading: const Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
            title: const Text("Workout Calendar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
            },
            leading: const Icon(
              Icons.attach_money,
              color: Colors.white,
            ),
            title: const Text("Data Log",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
            },
            leading: Icon(
              Icons.list_outlined,
              color: Colors.white,
            ),
            title: Text("Terms and Conditions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.white,
            ),
            title: Text("Contact Us",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
            onTap: (){}
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              "Logout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // runApp(const login_page());
              // userdata.write('islogged', false);
              // userdata.write('issignedin', false);
              //
              // userdata.remove('username');
              // userdata.remove('email');
              // userdata.isBlank;
            },
          ),
        ],
      ),
    );
  }
}
