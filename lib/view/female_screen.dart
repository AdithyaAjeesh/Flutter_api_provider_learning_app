import 'package:flutter/material.dart';
import 'package:flutter_api_provider_app/controller/provider_functions.dart';
import 'package:provider/provider.dart';

class FemaleScreen extends StatelessWidget {
  const FemaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderFunctions>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FeMale'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
          itemCount: provider.users.length,
          itemBuilder: (BuildContext context, int index) {
            final user = provider.users[index];
            final email = user.email;
            final gender = user.gender;
            const colors = Colors.red;
            return Container(
              margin: const EdgeInsets.all(10),
              height: 80,
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
          provider.fetchFemaleUsers();
        },
        child: const Text('Get Users'),
      ),
    );
  }
}
