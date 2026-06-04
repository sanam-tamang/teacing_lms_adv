import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teaching_lms_adv/core/routes/route_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("lunar Lms"),
            GestureDetector(
              onTap: () {
                context.pushNamed(RouteName.profile);
              },
              child: CircleAvatar(radius: 20),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.red,
      body: Text("Hello"),
    );
  }
}
