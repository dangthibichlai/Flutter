import 'dart:io';
import 'dart:io';
main() {
 // stdout.write('Nhập số lượng dòng: ');
  // int n = int.parse(stdin.readLineSync());
  for (int i = 0; i < 5; i++) {
    for(int j = 0; j < i; j++){
      stdout.write('*');
    }
    print(" ");
  }
  
}
