import '../data/admin_data.dart';
import '../data/user_data.dart';

class Admin_Controller {
int? adminController(Map User_data_entry) {
    if (Admin_data().name == User_data_entry["name"] && Admin_data().pass == User_data_entry["pass"]) {
      return 1;
    } else
      return 0;
  }
}
