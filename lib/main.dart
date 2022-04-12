import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Example"), backgroundColor: Colors.deepPurple,),
      body: const Center(
        child: Text('Flutter Drawer Example'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer.
        child: ListView(
          //  Ensure that ListView doesn't have any padding.
          //  This line will Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Image.asset("assets/images/mail.png")
            ),
            ListTile(
              title: const Text('Inbox'),
              onTap: () {
                // Here you can Update the state of the app,
                //like, navigating to the screen the user has selected
                // ...
                // After User has selected the option,
                // close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sent Messages'),
              onTap: () {
                // Here you can Update the state of the app,
                //like, navigating to the screen the user has selected
                // ...
                // After User has selected the option,
                // close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}