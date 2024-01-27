import 'package:election_commissio/models/drawer.dart';
import 'package:election_commissio/views/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      FirstPage(),
      FirstPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  int myIndex= 1;
  List<Widget> myWidget=[
    Information(),
    Information(),
    Information(),
   
  ];

  TextEditingController nid = TextEditingController();
  TextEditingController date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Home'),
      actions: [
    Builder(builder: (context) {
      return         IconButton(onPressed: () {
        Scaffold.of(context).openDrawer();
      }, icon: Icon(Icons.filter_list_outlined, color: Colors.blue,));
    },)

      ]
      ),
  drawer: Drawer(
        child: Column(children: [

          Container(
            alignment: Alignment.center,
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade400
              ),
              child: ListTile(
                leading: Image(image: AssetImage('images/logo.png')),
                title: Text('Bangladesh Election Commission',),
              ),
            ),


          Card(
            child: ListTile(
              title: Text('Change Language',style: TextStyle(fontSize: 15)),
            subtitle: Text('Noticeboard',style: TextStyle(fontSize: 15)),
            ),
          )

        ],)
        ),
  
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Verify NID to check your voting details',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade400,
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date of Birth',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        TextFormField(
                          controller: date,
                          decoration: InputDecoration(

                            labelText: 'Date of Birth',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade100,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.person, color: Colors.black,),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'NID Number',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        TextFormField(
                          controller: nid,
                          decoration: InputDecoration(

                            labelText: 'Enter Nid Number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple.shade100,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.document_scanner_outlined, color: Colors.black,),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {

                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(color: Colors.purple.shade200,),
                              child: Text(
                                'Verify',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Click the button to know about the election informations and analysis ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                              child: Text(
                                'Election Information',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                              child: Text(
                                'Election Result',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

              ],
            ),
          ),
        ),
      ),
   //   bottomNavigationBar: BottomNavigationBar(
   //       selectedItemColor: Colors.purple.shade200,
   //       currentIndex: myIndex,
   //       onTap: (index) {
   //         setState(() {
   //           myIndex=index;
   //         });
   //       },
   //
   //
   //       items:
   // [
   //   BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,),
   //     label: 'Home'
   //   ),
   //   BottomNavigationBarItem(icon: Icon(Icons.info_outline, color: Colors.black),
   //     label: 'Information'
   //   ),
   //   BottomNavigationBarItem(icon: Icon(Icons.verified_outlined, color: Colors.black),
   //     label: 'Result'
   //   ),
   //   BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black),
   //     label: 'Voting Center'
   //   )
   // ]
   //   ),


    );
  }
}
