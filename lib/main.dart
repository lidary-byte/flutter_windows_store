// import 'package:fluent_ui/fluent_ui.dart' hide Page;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/src/material/colors.dart' as colors;
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_windows_store/constant/app_prefs.dart';
import 'package:flutter_windows_store/constant/constant.dart';
import 'package:flutter_windows_store/constant/router_pages.dart';
import 'package:flutter_windows_store/widget/desktop_scroll_behavior.dart';
import 'package:flutter_windows_store/widget/main_nav.dart';
import 'package:get/get.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  // // if it's not on the web, windows or android, load the accent color
  // if (!kIsWeb &&
  //     [
  //       TargetPlatform.windows,
  //       TargetPlatform.android,
  //     ].contains(defaultTargetPlatform)) {
  //   SystemTheme.accentColor.load();
  // }

  await flutter_acrylic.Window.initialize();
  await flutter_acrylic.Window.hideWindowControls();
  await WindowManager.instance.ensureInitialized();
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setTitleBarStyle(
      TitleBarStyle.hidden,
      windowButtonVisibility: false,
    );
    await windowManager.setMinimumSize(const Size(500, 600));
    await windowManager.show();
    await windowManager.setPreventClose(true);
    await windowManager.setSkipTaskbar(false);
  });

  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _themeController = Get.put(AppThemeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppThemeController>(
        builder: (_) => AnimatedFluentTheme(
            data: _themeController.theme,
            child: GetMaterialApp(
              darkTheme: material.ThemeData(brightness: Brightness.dark),
              themeMode:
                  _themeController._isDrak ? ThemeMode.dark : ThemeMode.light,
              title: appTitle,
              locale: const Locale('zh', ''),
              localizationsDelegates: const [FluentLocalizations.delegate],
              supportedLocales: const [
                Locale('zh', ''),
              ],
              debugShowCheckedModeBanner: false,
              getPages: RouterPages.getPages,
              initialRoute: RouterPages.mainPageRouter,
              scrollBehavior: DesktopScrollBehavior(),
            )));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _themeController = Get.find<AppThemeController>();

  int _showPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      backgroundColor: colors.Colors.transparent,
      body: NavigationView(
          appBar: NavigationAppBar(
            title: const DragToMoveArea(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  appTitle,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            actions: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  child: GetBuilder<AppThemeController>(
                      builder: (_) => ToggleSwitch(
                            content: Text(_themeController.modeText),
                            checked: _themeController.isDrak,
                            onChanged: (v) => _themeController.changeTheme(),
                          ))),
              SizedBox(
                width: 138,
                height: 50,
                child: GetBuilder<AppThemeController>(
                    builder: (_) => WindowCaption(
                          brightness: _themeController.theme.brightness,
                          backgroundColor: colors.Colors.transparent,
                        )),
              )
            ]),
          ),
          pane: NavigationPane(
            selected: _showPageIndex,
            onChanged: (index) => setState(() => _showPageIndex = index),
            size: const NavigationPaneSize(openMaxWidth: 140),
            items: mainNav(),
          )),
    );
  }
}

/// 初始化一些设置
Future init() async {
  await AppPrefs.getInstance().initPrefs();
}

class AppThemeController extends GetxController {
  bool _isDrak = false;
  bool get isDrak => _isDrak;

  FluentThemeData? _theme;
  FluentThemeData get theme => _theme ?? FluentThemeData();

  String _modeText = 'Drak Mode';
  String get modeText => _modeText;

  void changeTheme() {
    _isDrak = !_isDrak;
    if (_isDrak) {
      _modeText = 'Light Mode';
      _theme = _createFluentTheme();
    } else {
      _modeText = 'Drak Mode';
      _theme = _createFluentTheme();
    }
    update();
  }

  FluentThemeData _createFluentTheme() {
    return FluentThemeData(
      accentColor: SystemTheme.accentColor.accent.toAccentColor(),
      brightness: _isDrak ? Brightness.dark : Brightness.light,
    );
  }
}
