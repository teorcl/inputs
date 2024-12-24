import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Slider'),
              Slider(
                value: _sliderValue,
                onChanged: (double value) {
                  debugPrint('Slider value: $value');
                  setState(() {
                    _sliderValue = value;
                  });
                },
                label: _sliderValue.toStringAsFixed(1),
                divisions: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
