class Student {
  String? code;
  String? name;
  DateTime? _birthDay;
  String? _phoneNumber;
  double? mathScore;
  double? literatureScore;
  double? englishScore;

  Student(
      {required this.code,
      required this.name,
      required this.mathScore,
      required this.literatureScore,
      required this.englishScore});

  void getData() {
    print('Code: $code');
    print('Name: $name');
    print('BirthDay: $_birthDay');
    print('Phone Number: $_phoneNumber');
    print('Math Score: $mathScore');
    print('Literature Score: $literatureScore');
    print('English Score: $englishScore');
  }
   double getAverageScore(){
    return (this.mathScore! + this.literatureScore! + this.englishScore!)/ 3;
   }
}
