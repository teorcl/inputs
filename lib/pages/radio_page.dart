import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? frameworkSelected;
  _Gender? genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Page'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text('Which Framework is better?'),
            Row(
              children: [
                Radio<String>(
                  value: 'Flutter',
                  groupValue: frameworkSelected,
                  onChanged: (valueSlected) {
                    debugPrint('Framework 😈😈😈😈😈😈😈 :$valueSlected');
                    setState(() {
                      frameworkSelected = valueSlected;
                    });
                  },
                ),
                Text('Flutter'),
              ],
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              value: 'React Native',
              groupValue: frameworkSelected,
              onChanged: (value) {
                debugPrint('Framework 😈😈😈😈😈😈😈 :$value');
                setState(() {
                  frameworkSelected = value;
                });
              },
              title: const Text('React Native'),
            ),
            Divider(),
            Text('What ui your gender?'),
            RadioListTile<_Gender>(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              value: _Gender.male,
              groupValue: genderSelected,
              onChanged: (value) {
                debugPrint(
                  'Genero👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨: ${value!.value}',
                );
                setState(() {
                  genderSelected = value;
                });
              },
              title: Text(_Gender.male.value),
            ),
            RadioListTile<_Gender>(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              value: _Gender.female,
              groupValue: genderSelected,
              onChanged: (value) {
                debugPrint(
                  'Genero👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨: ${value!.value}',
                );
                setState(() {
                  genderSelected = value;
                });
              },
              title: Text(_Gender.female.value),
            ),
            RadioListTile<_Gender>(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              value: _Gender.other,
              groupValue: genderSelected,
              onChanged: (value) {
                debugPrint(
                  'Genero👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨👩‍❤️‍👨: ${value!.value}',
                );
                setState(() {
                  genderSelected = value;
                });
              },
              title: Text(_Gender.other.value),
            ),
          ],
        ),
      ),
    );
  }
}

enum _Gender {
  male('Hombre'),
  female('Mujer'),
  other('Otro');

  const _Gender(this.value);

  final String value;
}
