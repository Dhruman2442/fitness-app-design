import 'package:flutter/material.dart';

final items = [];

final expenses = [
  'Lunch',
  'Taxi Rent',
  'Fast Food',
  'Water Bottle',
  'Ride',
  'Cold Drinks',
  'Dinner',
  'Ice Cream',
];
final date = [
  '06-02-2022',
  '06-02-2022',
  '06-02-2022',
  '06-02-2022',
  '06-02-2022',
  '06-02-2022',
  '06-02-2022',
  '06-02-2022',
];
final time = [
  '06:09',
  '06:09',
  '06:09',
  '06:09',
  '06:09',
  '06:09',
  '06:09',
  '06:09',
];
final site = [
  'Privacy',
  'History',
  'Help and Support',
  'Setting',
  'Add a Friend',
];
final ic = [
  Icons.privacy_tip,
  Icons.history,
  Icons.help,
  Icons.settings,
  Icons.person_add_alt_1,
];

class lview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF38383D),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              title: Text(
                "State:  " + items[index],
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              leading: Container(
                width: 50,
                height: 50,
              ),
              trailing: const Icon(Icons.double_arrow_outlined),
              subtitle: Row(
                children: const [
                  Text(
                    "Status:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "closed",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class lview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF252634),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: const ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: Colors.white,
              ),
              title: Text(
                "Privacy",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF252634),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: const ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.white,
              ),
              title: Text(
                "History",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF252634),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: const ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
              ),
              title: Text(
                "Help and Support",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF252634),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                "Setting",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                ;
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF252634),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: const ListTile(
              leading: Icon(
                Icons.person_add_alt_1,
                color: Colors.white,
              ),
              title: Text(
                "Add a Friend",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class lview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 15, right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFF252634),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: ListTile(
              title:
                  Text(expenses[index], style: TextStyle(color: Colors.white)),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              subtitle: Row(
                children: [
                  Text(
                    date[index] + time[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geeksforgeeks"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
            ),
          ],
        ),
      ),
    );
  }
}
