import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'user/user_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final UserService service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Modular.to.navigate("/group/"),
              child: const Text("Go to group Page"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Modular.to.navigate("/user/"),
              child: const Text("Go to user Page"),
            ),
          ],
        ),
      ),
    );
  }

// @override
// void initState() {
//   super.initState();
//   service = Modular.get<UserService>();
// }
}
