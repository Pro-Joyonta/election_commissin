import 'package:election_commissio/test_project_one/views/screenThree.dart';
import 'package:election_commissio/views/first_page.dart';
import 'package:flutter/material.dart';

class TopTab extends StatefulWidget {
  const TopTab({super.key});

  @override
  State<TopTab> createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
            bottom: TabBar(tabs: [
              Icon(Icons.home),
              Icon(Icons.search),
            ]),
          ),
          body: TabBarView(children:
          [
            FirstPage(),
            Text('two'),

          ]),
        )

    );
  }
}
