import 'package:flutter/material.dart';
import 'package:flutter_learning/pertemuan05/components/chip_studi_kasus.dart';
import 'package:flutter_learning/pertemuan05/pertemuan05_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan05Screen extends StatefulWidget {
  const Pertemuan05Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan05Screen> createState() => _Pertemuan05ScreenState();
}

class _Pertemuan05ScreenState extends State<Pertemuan05Screen> {
  bool? soal1a = false;
  bool? soal1b = false;

  String soal2 = "abcd";

  bool kelasPagi = false;
  bool kelasSiang = false;
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan05Provider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Pertemuan 05'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Soal 1 : Menggunakan Checkbox
              const Text(
                  '1. Memori yang berfungsi untuk tempat penyimpanan data sementara disebut:'),
              Row(
                children: [
                  const Text('a.'),
                  const SizedBox(width: 5),
                  Checkbox(
                      value: soal1a,
                      onChanged: (val) {
                        setState(() {
                          soal1a = val;
                        });
                      }),
                  const Text('RAM')
                ],
              ),
              Row(
                children: [
                  const Text('b.'),
                  const SizedBox(width: 5),
                  Checkbox(
                      value: soal1b,
                      onChanged: (val) {
                        setState(() {
                          soal1b = val;
                        });
                      }),
                  const Text('Desain Jaringan')
                ],
              ),

              const Divider(),

              // Soal 2 : menggunakan radio
              const Text('2. Skema desain pembangunan jaringan disebut:'),
              Row(
                children: [
                  const Text('a.'),
                  const SizedBox(width: 5),
                  Radio(
                    value: 'topologi',
                    groupValue: soal2,
                    onChanged: (val) {
                      setState(() {
                        soal2 = 'topologi';
                      });
                    },
                  ),
                  const Text('Topologi'),
                ],
              ),
              Row(
                children: [
                  const Text('b.'),
                  const SizedBox(width: 5),
                  Radio(
                    value: 'desain jaringan',
                    groupValue: soal2,
                    onChanged: (val) {
                      setState(() {
                        soal2 = 'desain jaringan';
                      });
                    },
                  ),
                  const Text('Desain Jaringan'),
                ],
              ),

              //Chips
              const Text('Feedback Soal',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('kelas'),
              Row(
                children: [
                  ChoiceChip(
                      label: const Text('Pagi'),
                      selectedColor: Colors.blue[200],
                      selected: kelasPagi,
                      onSelected: (val) {
                        setState(() {
                          kelasPagi = val;
                        });
                      }),
                  const SizedBox(width: 5),
                  ChoiceChip(
                      label: const Text('Siang'),
                      selectedColor: Colors.blue[200],
                      selected: kelasSiang,
                      onSelected: (val) {
                        setState(() {
                          kelasSiang = val;
                        });
                      }),
                ],
              ),
              const Text('Soal di atas dipelajari saat? '),
              Row(
                children: [
                  FilterChip(
                    label: const Text('Sekolah'),
                    selectedColor: Colors.blue[200],
                    selected: prov.statusSekolah,
                    onSelected: (val) {
                      prov.setSekolah = val;
                    },
                  ),
                  const SizedBox(width: 5),
                  FilterChip(
                    label: const Text('Praktik'),
                    selectedColor: Colors.blue[200],
                    selected: prov.statusPraktik,
                    onSelected: (val) {
                      prov.setPraktik = val;
                    },
                  ),
                  const SizedBox(width: 5),
                  FilterChip(
                    label: const Text('Kursus'),
                    selectedColor: Colors.blue[200],
                    selected: prov.statusKursus,
                    onSelected: (val) {
                      prov.setKursus = val;
                    },
                  ),
                ],
              ),
              // Studi Kasus M05
              // Input Chip
              const SizedBox(height: 10),
              const Text('Studi Kasus !!!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Peminatan saat sekolah?'),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 12,
                      ),
                      height: 60,
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey)),
                      ),
                      child: Row(
                        children: prov.selectedChips
                            .map(
                              (item) => OutlinedChip(
                                selected: false,
                                label: Text(item.title),
                                onSelected: (val) {},
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: prov.list0fChipItem
                          .map(
                            (item) => OutlinedChip(
                              label: Text(item.title),
                              selected: item.selected,
                              onSelected: (val) {
                                prov.toggleChip(item.title, val);
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
