import 'package:flutter/material.dart';
import 'package:al_quran_mobile/data/models/details/detail_surah_model.dart';

class AyatItem extends StatelessWidget {
  final Ayat ayat;

  const AyatItem({super.key, required this.ayat});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Row(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${ayat.surah}:${ayat.nomor}',
                    style: const TextStyle(fontSize: 11),
                  ),
                ),

                Expanded(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      ayat.ar ?? '',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),

            Text('${ayat.idn}'),
          ],
        ),
      ),
    );
  }
}
