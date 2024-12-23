import 'package:flutter/material.dart';
import 'package:inputs/routes/routes.dart';

import '../pages/check_box_page.dart';
import '../pages/keyboard_types_page.dart';
import '../pages/radio_page.dart';
import '../pages/text_field_page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
    Routes.keyboardTypes: (_) => const KeyboardTypesPage(),
    Routes.checkBox: (_) => const CheckBoxPage(),
    Routes.radio: (_) => const RadioPage(),
  };
}
