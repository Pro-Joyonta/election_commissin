import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
