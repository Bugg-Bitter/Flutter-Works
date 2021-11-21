import '../data/user_data.dart';

class User_Controller {
  int? userController(Map User_data_entry) {
    if (User_data().name == User_data_entry["name"] && User_data().pass == User_data_entry["pass"]) {
      return 11;
    } else
      return 0;
  }
}
