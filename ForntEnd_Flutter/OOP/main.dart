import 'dart:io';

import 'navigation.dart';
import 'views/menu.dart';

void main() {
  while (true) {
    int? option = Menu().mainMenu();
    Navigation().navigator(option);
  }
}
