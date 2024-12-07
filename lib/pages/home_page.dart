import 'package:flutter/material.dart';
import 'package:inputs/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final keys = appRoutes.keys.toList();

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) {
          final routeName = keys[index];

          return ListTile(
            title: Text(keys[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                routeName,
              );
            },
          );
        },
        itemCount: keys.length,
      ),
    );
  }
}
