import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../user/user_service.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  late final UserService service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Modular.get hash UserService ${service.hashCode}"),
            const SizedBox(height: 10),
            Text("Modular.get hash UserSubService ${service.userSubService.hashCode}"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Modular.to.navigate("/"),
              child: const Text("Go to home page"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    service = Modular.get<UserService>();
  }
}
