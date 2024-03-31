import 'package:hello_flutter/theme/domain/model/theme.dart';
import 'package:hello_flutter/theme/share/theme_manager.dart';
import 'package:flutter_nscore/share/dep/arch.dart';

part 'theme_provider.g.dart';

@riverpod
IAppTheme themeManager(ThemeManagerRef ref) {
  return ThemeManager();
}