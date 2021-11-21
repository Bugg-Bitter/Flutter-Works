import 'controllers/admin_controller.dart';
import 'controllers/user_controller.dart';
import 'views/menu.dart';

class Navigation {
  navigator(option) {
    if (option == 1) {
      Map U_info = Menu().userMenu();
      int? matched = User_Controller().userController(U_info);
      Menu().outputs(matched);
    } else if (option == 2) {
      Map Adm_info = Menu().adminmenu();
      int? matched = Admin_Controller().adminController(Adm_info);
      Menu().outputs(matched);
    }
  }
}
