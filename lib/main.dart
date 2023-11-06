import "package:flutter/material.dart";

import "src/app.dart";
import "src/core/translation/translation_keys.dart";

late TranslationKeys translationKeys;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  translationKeys = TranslationKeys();
  await translationKeys.load();

  runApp(const MyApp());
}
