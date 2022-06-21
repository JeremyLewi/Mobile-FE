import 'package:flutter/material.dart';
import 'package:flutter_learning/pertemuan06/studi_kasus/components/dropdown_citacita.dart';
import 'package:flutter_learning/pertemuan06/studi_kasus/studi_kasus_provider.dart';
import 'package:provider/provider.dart';

class StudiKasusScreen extends StatelessWidget {
  const StudiKasusScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StudiKasusProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studi Kasus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Cita-cita'),
              Switch(
                value: provider.isActive,
                onChanged: (newValue) => provider.setIsActive(newValue),
              )
            ],
          ),
          const SizedBox(height: 18),
          provider.isActive
              ? const DropDownCitacita()
              : const SizedBox.shrink(),
        ]),
      ),
    );
  }
}
