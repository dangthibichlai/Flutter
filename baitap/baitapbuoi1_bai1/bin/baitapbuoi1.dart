import 'package:baitapbuoi1_bai1/baitapbuoi1_bai1.dart' as baitapbuoi1_bai1;

void main(List<String> arguments) {
  print(DateTime.now());
  print('Bài 1: ');
  tongChan();
  var information = {
    'name': 'Nguyễn Văn A',
    'age': "20",
    'address': 'Hà Nội',
    'hotline': '0123456789'
  };
  print('Bài 3: ${getHotline(information)}');
}

void tongChan() {
  int tong = 0;
  for (int i = 0; i <= 1000; i++) {
    if (i % 2 == 0) {
      tong += i;
      if (tong <= 400) {
        print(i);
      }
    }
  }
}

void demChiaHet() {
  // đếm số lượng số chia hết cho 3  và bn số chia hêt cho  5từ 1 đến 1000
  int dem = 0;
  int dem1 = 0;
  for (int i = 0; i <= 1000; i++) {
    if (i % 3 == 0) {
      dem++;
    }
    if (i % 5 == 0) {
      dem1++;
    }
  }
  print('Số lượng số chia hết cho 3 là: $dem');
  print('Số lượng số chia hết cho 5 là: $dem1');
}

String getHotline(var information) {
  return information['hotline'];
}
