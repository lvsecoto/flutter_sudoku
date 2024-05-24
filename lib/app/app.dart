import 'theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ui/common/common.dart';
import '../router.dart';

final GlobalKey _appKey = GlobalKey();

BuildContext get appContext => _appKey.currentState!.context;

class App extends StatelessWidget {
  /// App入口
  /// 设置主题等等
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardAutoDismissWidget(
      child: ProviderScope(
        child: ThemeWidget(
          builder: (context, themeData, child) =>
              Consumer(builder: (context, ref, _) {
                return MaterialApp.router(
                  key: _appKey,
                  routerConfig: ref.watch(routerProvider),
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale.fromSubtags(
                      languageCode: 'zh',
                      scriptCode: 'Hans',
                    ),
                  ],
                  theme: themeData.copyWith(),
                  builder: (context, child) => child!,
                );
              }),
        ),
      ),
    );
  }
}
