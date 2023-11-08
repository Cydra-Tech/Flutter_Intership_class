import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: const Text('Playing With Widgets'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        ],
      ),
      drawer: const NavigationDrawer(children: [
        NavigationDrawerDestination(
            icon: Icon(Icons.home), label: Text('Home')),
        NavigationDrawerDestination(
            icon: Icon(Icons.notifications), label: Text('Notification')),
        NavigationDrawerDestination(
            icon: Icon(Icons.settings), label: Text('Settings')),
      ]),
      body: SizedBox(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print('Clicked!');
                  },
                  child: Text('Click Me!')),
              ElevatedButton.icon(
                  onPressed: () {}, icon: Icon(Icons.add), label: Text('Add')),
              FilledButton(
                onPressed: () {},
                child: Text('Click Me!'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff786654))),
              ),
              FilledButton.tonal(
                  onPressed: () {
                    print('Clicked!');
                  },
                  child: Text('Click Me!')),
                  OutlinedButton(onPressed: (){}, child: Text('Click Me!')),
               IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
              //  SegmentedButton(segments: [
              //   ButtonSegment(value: true,icon: Icon(Icons.select_all),label: Text('Selected')),
              //   ButtonSegment(value: false,icon: Icon(Icons.select_all),label: Text('Enable')),
              //   ButtonSegment(value: false,icon: Icon(Icons.select_all),label: Text('Enable')),
              //  ], selected: Set())
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.notifications_outlined), label: 'Notification'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

      // bottomNavigationBar: BottomAppBar(child: Row(children: [
      //   IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
      //   IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      //   IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      //   IconButton(onPressed: () {}, icon: const Icon(Icons.person))
      // ],),
      // ),
    );
  }
}
