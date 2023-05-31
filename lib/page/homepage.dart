import 'dart:io';
import 'intropage.dart';

class HomePage extends Intropage{
  void kirish() {
    print('''
  +====================+
  | 1: Create contact  |
  |====================|
  | 2: Red contact     |
  |====================|
  | 3: Update contact  |
  |====================|
  | 4: Dalete contact  |
  +====================+
  ''');

    int? number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    if (number>1 || number<4) {
      switch (number) {
        case 1:
          create();
          kirish();
          break;
        case 2:
          red();
          kirish();
          break;
        case 3:
          update();
          kirish();
          break;
        case 4:
          dalete();
          kirish();
          break;
      }
    } else {
      print('mavjud bolmagan raqamni tanladingiz');
      kirish();
    }
  }
}






