import 'dart:io';

enum JenjangPendidikan { SD, SMP, SMA, Kuliah }

void main() {
  JenjangPendidikan jenjang = JenjangPendidikan.SD;

  switch (jenjang) {
    case JenjangPendidikan.SD:
      print("Kamu Esdeh");
      break;
    case JenjangPendidikan.SMP:
      print("Kamu Esempeh");
      break;
    case JenjangPendidikan.SMA:
      print("Kamu Esemah");
      break;
    case JenjangPendidikan.Kuliah:
      print("Kamu Kuliah");
      break;
  }
}