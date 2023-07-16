import 'package:ecommerce/screens/notifications.dart';
import 'package:ecommerce/screens/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              )),
        ],
      ),
      body: const SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      )),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: const SafeArea(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      child: Icon(
                        Icons.person,
                        size: 70,
                      ),
                    ),
                    Text(
                      'Person 1',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Library',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
