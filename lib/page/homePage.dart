import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi Alfonzo👋",
                style: Theme.of(context).textTheme.titleMedium),
            Text("Enjoy our Services",
                style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: badges.Badge(
                  badgeContent: const Text(
                    "2",style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.grey
                  ),
                  position: badges.BadgePosition.topEnd(top: -12, end: -12),
                  child: const Icon(IconlyBroken.notification, color: Colors.green,)),
            ),
          )
        ],
      ),
    );
  }
}
