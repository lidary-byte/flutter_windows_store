import 'package:event_bus/event_bus.dart';

class AppEvent {
  static AppEvent? _instance;

  static AppEvent getInstance() {
    _instance ??= AppEvent._internal();
    return _instance!;
  }

  late EventBus eventBus;

  AppEvent._internal() {
    eventBus = EventBus();
  }
}
