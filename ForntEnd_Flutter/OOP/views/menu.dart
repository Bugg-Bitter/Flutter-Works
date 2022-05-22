import 'dart:io';

class Menu {
  mainMenu() {
    print('Login as : \n1.User\n2.Admin\n\n Choose Your Option : ');
    int selectedOption = int.parse(stdin.readLineSync()!);
    return selectedOption;
  }

  Map userMenu() {
    print('Currently User is accessing...\n\n');
    print('Username: ');
    String? U_name = stdin.readLineSync();
    print('Password: ');
    String? U_pass = stdin.readLineSync();
    return {"name": "$U_name", "pass": "$U_pass"};
  }

  Map adminmenu() {
    print('Currently Admin is accessing...\n\n');
    print('Adminname: ');
    String? Admin_name = stdin.readLineSync();
    print('Password: ');
    String? Admin_pass = stdin.readLineSync();
    return {"name": "$Admin_name", "pass": "$Admin_pass"};
  }

  outputs(int? res) {
    switch (res) {
      case 11:
        print('User login Successful');
        break;
      case 1:
        print('Admin login Successful');
        break;
      default:
        print('Invalid ID');
    }
  }
}
