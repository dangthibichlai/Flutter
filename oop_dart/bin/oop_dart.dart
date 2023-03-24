import 'package:oop_dart/oop_dart.dart' as oop_dart;
import 'package:oop_dart/student.dart';


void main(List<String> arguments) {
 Student st = new Student(code: '001', name: 'Nguyen Van A', mathScore: 8, literatureScore: 7, englishScore: 9);
  st.getData();
  print('Average Score: ${st.getAverageScore()}');
  
}


