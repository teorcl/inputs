import 'package:flutter/material.dart';

ThemeData getThemeData(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: Colors.amber,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Colors.amber,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Colors.black12,
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.greenAccent),
      fillColor: WidgetStateProperty.all(Colors.red),
      overlayColor: WidgetStateProperty.all(Colors.blueGrey.withValues()),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(Colors.red),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(Colors.blue),
      // trackColor: WidgetStateProperty.all(Colors.red),
      // overlayColor: WidgetStateProperty.all(Colors.blueGrey.withValues()),
      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.pinkAccent,
      thumbColor: Colors.pink,
      //overlayColor: Colors.pink.withValues(alpha: 32),
      overlayColor: Colors.pink.withAlpha(32),
      valueIndicatorColor: Colors.pink,
      inactiveTrackColor: Colors.pinkAccent.withAlpha(28),
      trackHeight: 12,
      inactiveTickMarkColor: Colors.white54,
      thumbShape: const RoundSliderThumbShape(
        enabledThumbRadius: 16,
      ),
    ),
  );
}
