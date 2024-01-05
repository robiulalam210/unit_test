
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../userapi/model/user_model.dart';
import '../../userapi/repository/repositoy.dart';

class HomePageApi extends StatefulWidget {
  const HomePageApi({super.key, required this.title});

  final String title;

  @override
  State<HomePageApi> createState() => _HomePageApiState();
}

class _HomePageApiState extends State<HomePageApi> {
  Future<User> getUsers = UserRepository(Client()).getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: getUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Center(
            child: Text(
              '${snapshot.data}',
            ),
          );
        },
      ),
    );
  }
}