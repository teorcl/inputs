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
              RotatedBox(
                quarterTurns: 3,
                child: Slider(
                  value: _sliderValue,
                  onChanged: (double value) {
                    debugPrint('Slider value: $value');
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                  label: _sliderValue.toStringAsFixed(1),
                  divisions: 10,
                  thumbColor: Colors.amber,
                  onChangeStart: (_) {
                    debugPrint('Empezó a moverse 🔥🔥🔥🔥');
                  },
                  onChangeEnd: (_) {
                    debugPrint('Terminó de moverse 💧💧💧💧💧');
                  },
                ),
              ),
              SizedBox(
                width: 150,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Slider(
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 16, 16),
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Slider(
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
                    ),
                    Expanded(
                      child: Text(
                        'Slider rotado con un text para probar el RotatedBox qwqwQWqwqw',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
