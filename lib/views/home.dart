// import 'package:election_commissio/models/drawer.dart';
// import 'package:flutter/material.dart';
//
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   TextEditingController nid = TextEditingController();
//   TextEditingController date = TextEditingController();
//   int myIndex=0;
//   List<Widget> myWidget=[
//     Text('Home'),
//     Text('info'),
//     Text('result'),
//     Text('center'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//       appBar: AppBar(
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//         title: Text(
//           'Home',
//           style: TextStyle(fontWeight: FontWeight.w700),
//
//         ),
//
//       ),
//      drawer: Drawer(child: ListView(
//        children: [
//
//        ],
//      ),),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Center(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: Text(
//                       'Verify NID to check your voting details',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   height: MediaQuery.of(context).size.height * 0.125,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.green,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(30.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Date of Birth',
//                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                         ),
//                         TextFormField(
//                           controller: date,
//                           decoration: InputDecoration(
//                             labelText: 'Enter Date of Birth',
//                             prefixIcon: Icon(Icons.person),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           'NID Number',
//                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                         ),
//                         TextFormField(
//                           controller: nid,
//                           decoration: InputDecoration(
//                             labelText: 'Enter Nid Number',
//                             prefixIcon: Icon(Icons.document_scanner_outlined),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Center(
//                           child: InkWell(
//                             onTap: () {
//                               setState(() {
//
//                               });
//                             },
//                             child: Container(
//                               alignment: Alignment.center,
//                               height: 40,
//                               decoration: BoxDecoration(color: Colors.purple.shade800),
//                               child: Text(
//                                 'Verify',
//                                 style: TextStyle(color: Colors.white70),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(30.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Click the button to know about the election informations and analysis ',
//                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                         ),
//                         SizedBox(height: 20),
//                         Center(
//                           child: InkWell(
//                             onTap: () {},
//                             child: Container(
//                               alignment: Alignment.center,
//                               height: 40,
//                               decoration: BoxDecoration(border: Border.all(color: Colors.greenAccent)),
//                               child: Text(
//                                 'Election Information',
//                                 style: TextStyle(color: Colors.greenAccent),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10,),
//                         Center(
//                           child: InkWell(
//                             onTap: () {},
//                             child: Container(
//                               alignment: Alignment.center,
//                               height: 40,
//                               decoration: BoxDecoration(border: Border.all(color: Colors.greenAccent)),
//                               child: Text(
//                                 'Election Result',
//                                 style: TextStyle(color: Colors.greenAccent),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//          backgroundColor: Colors.purple,
//           currentIndex: myIndex,
//           onTap: (index) {
//             setState(() {
//               myIndex=index;
//             });
//           },
//           items: [
//         BottomNavigationBarItem(
//           backgroundColor: Colors.amber,
//             label: 'Home',
//             icon: Icon(Icons.home)),
//         BottomNavigationBarItem(
//             label: 'Information',
//             icon: Icon(Icons.info)),
//         BottomNavigationBarItem(
//             label: 'Result',
//             icon: Icon(Icons.verified_outlined)),
//         BottomNavigationBarItem(
//             label: 'Voting Center',
//             icon: Icon(Icons.search)),
//       ]),
//     );
//   }
// }
