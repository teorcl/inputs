import 'package:flutter/material.dart';

class KeyboardTypesPage extends StatelessWidget {
  const KeyboardTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keyboard Types'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(), // Podria comentar este border en todos los TextField y tomaria el border definido en el ThemeData
              //label: Text('Email'),
              labelText: 'Email',
            ),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Price',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ],
      ),
    );
  }
}
