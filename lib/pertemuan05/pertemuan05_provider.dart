import 'package:flutter/material.dart';

class Pertemuan05Provider extends ChangeNotifier {
  bool _disekolah = false;
  bool _diPraktik = false;
  bool _diKursus = false;

  bool get statusSekolah => _disekolah;
  bool get statusPraktik => _diPraktik;
  bool get statusKursus => _diKursus;

  set setSekolah(val) {
    _disekolah = val;
    notifyListeners();
  }

  set setPraktik(val) {
    _diPraktik = val;
    notifyListeners();
  }

  set setKursus(val) {
    _diKursus = val;
    notifyListeners();
  }

  //Studi Kasus M05

  final List<ChipItem> _list0fChipItem = [
    ChipItem(title: 'TKJ', selected: false),
    ChipItem(title: 'RPL', selected: false),
    ChipItem(title: 'SMA', selected: false),
  ];

  List<ChipItem> get list0fChipItem {
    return _list0fChipItem;
  }

  void toggleChip(String title, bool selected) {
    int index = _list0fChipItem.indexWhere((element) => element.title == title);

    _list0fChipItem[index].selected = selected;
    notifyListeners();
  }

  List<ChipItem> get selectedChips {
    return _list0fChipItem.where((item) => item.selected == true).toList();
  }
}

class ChipItem {
  String title;
  bool selected;

  ChipItem({required this.title, required this.selected});
}
