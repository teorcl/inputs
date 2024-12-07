import 'package:flutter/material.dart';
import 'package:inputs/routes/routes.dart';

import '../pages/text_field_page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
  };
}
