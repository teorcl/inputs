import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Text(
                  '''Voluptate in officia veniam quis duis proident sint esse. 
            Do magna nulla veniam do. Eiusmod elit tempor culpa est voluptate. 
            Laboris exercitation laboris ad duis minim et ut qui laboris magna anim. 
            Do dolore anim minim et.''',
                ),
                CheckboxListTile(
                  value: isChecked,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  onChanged: (value) {
                    debugPrint('value🤬🤬🤬🤬🤬🤬: $value');
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                  title: const Text(
                    'Fugiat voluptate labore qui culpa adipisicing enim aute culpa occaecat.',
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    debugPrint('value🤬🤬🤬🤬🤬🤬: $value');
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                  fillColor: WidgetStateProperty.all(Colors.green),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                MaterialButton(
                  //onPressed: onPressed,
                  //onPressed: () => onChanged(isChecked),
                  onPressed: isChecked ? () {} : null,
                  child: Text('Check'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void onPressed() {
  debugPrint('Button pressed');
}

void onChanged(bool? value) {
  debugPrint('value🤬🤬🤬🤬🤬🤬: $value');
}
