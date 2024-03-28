// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_api_provider_app/controller/provider_functions.dart';
import 'package:provider/provider.dart';

class MaleScreen extends StatelessWidget {
  const MaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderFunctions>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Male'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: provider.users.length,
          itemBuilder: (BuildContext context, int index) {
            final user = provider.users[index];
            final email = user.email;
            final gender = user.gender;
            const colors = Colors.blue;
            return Container(
              margin: const EdgeInsets.all(10),
              height: 100,
              color: colors,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$user'),
                  Text(email),
                  Text(gender),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.fetchMaleUsers();
        },
        child: const Text('Get Users'),
      ),
    );
  }
}
