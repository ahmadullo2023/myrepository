import 'dart:io';

Map list = {};
var regex = RegExp(r"^[0-9]{12}$");
class Intropage{
void create(){
   print('Qoshmoqchi bolgan contactingizni ismi va raqamini kiriting!');
   String name = stdin.readLineSync()?? '';
   String phonum = stdin.readLineSync()?? '';
   if(name.isNotEmpty &&  regex.hasMatch(phonum)){
     list.addAll({name: phonum});
     print('Contact muvofaqyatli qoshildi');
   }else{
     print('Ism va telefon raqamni tekshiring va qayta kiriting');
   }
}

void red(){
   print(list);
}

void update(){
  print('Qaysi contactni ozgartirmoqchisiz?');
  String name = stdin.readLineSync()?? '';
  if(list.containsKey(name)){
    print('contactni yangi ismini kiriting!');
    String newname = stdin.readLineSync()?? '';
    print('contactni yangi raqamini kiriting!');
    String newnum = stdin.readLineSync()?? '';
    list.remove(name);
    list.addAll({newname: newnum});
  }
}

void dalete(){
  print('Qaysi contactni ochirmoqchisiz?');
  String name = stdin.readLineSync()?? '';
  if(list.containsKey(name)) {
    print('contact muofiyaqatkli ochirildi!');
    list.remove(name);
  }else{
    print('bunday contact mavjud emas');
  }
}
}



