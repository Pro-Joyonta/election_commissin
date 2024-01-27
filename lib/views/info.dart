import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Information'),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.125,),
            Container(child: Card(

            )),
            SizedBox(height: MediaQuery.of(context).size.height*.0125,),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                   color: Colors.purple,
                ),
                alignment: Alignment.center,

                child: ListTile(
                title: Column(
                  children: [
                    Text('12th National Parliament Election'),
                    
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple,),
              ),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.0125,),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Container(
                  alignment: Alignment.center,

                  child: ListTile(

                    title: Text('At a Glance', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30)),
                    trailing: Icon(Icons.how_to_vote_outlined, color: Colors.purple,),
                   subtitle: Text('Registered Parties'),

                  ),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.0125,),

            Padding(
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Container(
                  alignment: Alignment.center,

                  child: ListTile(

                    title: Text('Registered Parties', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30)),
                    trailing: Icon(Icons.how_to_vote_outlined, color: Colors.purple,),
                   subtitle: Text('12th National Parliament Election'),

                  ),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.0125,),

            Padding(
              padding: const EdgeInsets.all(1),
              child: Card(
                child: Container(
                  alignment: Alignment.center,

                  child: ListTile(

                    title: Text('Noticeboard', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30)),
                    trailing: Icon(Icons.how_to_vote_outlined, color: Colors.purple,),
                   subtitle: Text('12th National Parliament Election'),

                  ),),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
