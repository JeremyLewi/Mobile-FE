import 'package:flutter/material.dart';
import 'package:flutter_learning/pertemuan06/studi_kasus/components/detail_card.dart';
import 'package:flutter_learning/pertemuan06/studi_kasus/data/citacita_data.dart';
import 'package:flutter_learning/pertemuan06/studi_kasus/models/citacita_model.dart';
import 'package:flutter_learning/pertemuan06/studi_kasus/studi_kasus_provider.dart';
import 'package:provider/provider.dart';

class DropDownCitacita extends StatelessWidget {
  const DropDownCitacita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StudiKasusProvider>(context);

    List<CitacitaModel> listOfCitacita = citacitaModelFromRawJson(citacitaJson);

    CitacitaModel? selectedDetail = provider.selectedItem != null
        ? listOfCitacita
            .where((item) => item.title == provider.selectedItem)
            .toList()[0]
        : null;

    return SizedBox(
      child: Column(
        children: [
          DropdownButtonFormField(
            hint: const Text('Pilih Cita-cita'),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            value: provider.selectedItem,
            items: listOfCitacita.map((citacita) {
              return DropdownMenuItem(
                key: ValueKey(citacita.id),
                child: Text(citacita.title),
                value: citacita.title,
              );
            }).toList(),
            onChanged: (newValue) {
              provider.setSelectedItem(newValue as String);
            },
          ),
          const SizedBox(height: 18),
          selectedDetail != null
              ? DetailCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        selectedDetail.imageURL,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        selectedDetail.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(selectedDetail.description)
                    ],
                  ),
                )
              : DetailCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        size: 40,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Kamu belum memilih cita-cita',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
