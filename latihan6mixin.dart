mixin Lembur {
  void lemburjam(int jam) {
    if (jam > 15) {
      print('lembur lo kurang lama boss');
    }
    // else if (jam < 25) {
    //   print('lembur lo udah cukup boss');
    // } else {
    //   print('lembur lo pas boss');
    // }
  }
}

class Staff with Lembur {}

void main() {
  var staff = Staff();
  staff.lemburjam(24);
}