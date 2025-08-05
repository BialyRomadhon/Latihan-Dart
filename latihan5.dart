class Kendaraan {
  void bergerak() {
    print('Kendaraan sedang bergerak.');
  }
}

class Sepeda extends Kendaraan {}

void main() {
  var sepeda = Sepeda();
  sepeda.bergerak();
}