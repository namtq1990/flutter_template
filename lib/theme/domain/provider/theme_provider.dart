import 'package:flutter_nscore/share/dep/arch.dart';
import 'package:hello_flutter/theme/domain/model/theme.dart';
import 'package:hello_flutter/theme/share/theme_manager.dart';

final themeProvider = Provider<IAppTheme>((ref) {
  return ThemeManager();
});