import 'package:al_quran_mobile/data/models/details/detail_surah_model.dart';
import 'package:al_quran_mobile/presentation/pages/details/widgets/ayat_item.dart';
import 'package:al_quran_mobile/presentation/pages/details/widgets/surah_header.dart';
import 'package:flutter/material.dart';
import 'package:al_quran_mobile/data/services/remote_resource.dart';
import 'package:just_audio/just_audio.dart';

class DetailSurahPage extends StatefulWidget {
  final int id;
  const DetailSurahPage({super.key, required this.id});

  @override
  State<DetailSurahPage> createState() => _DetailSurahPageState();
}

class _DetailSurahPageState extends State<DetailSurahPage> {
  final remoteResource = RemoteResource();
  late int currentId;
  final List<Ayat> ayatList = [];
  DetailSurahModel detailSurah = DetailSurahModel();
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    currentId = widget.id;
    getDetailSurah(currentId);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void getDetailSurah(int id) async {
    setState(() {
      detailSurah = DetailSurahModel();
      ayatList.clear();
    });

    final result = await remoteResource.detailSurah(id);

    if (!mounted) return;

    result.fold(
      (error) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $error')));
      },
      (data) {
        setState(() {
          detailSurah = data;
          ayatList.clear();
          ayatList.addAll(data.ayat ?? []);
        });
        if (detailSurah.audio != null) {
          player.stop();
          player.setUrl(detailSurah.audio!);
        }
      },
    );
  }

  void _pindahSurat(int idSuratBaru) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DetailSurahPage(id: idSuratBaru)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          detailSurah.namaLatin ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          if (detailSurah.suratSebelumnya != null)
            IconButton(
              tooltip:
                  "Surat Sebelumnya: ${detailSurah.suratSebelumnya!.namaLatin}",
              icon: const Icon(Icons.chevron_left_rounded, size: 32),
              onPressed: () =>
                  _pindahSurat(detailSurah.suratSebelumnya!.nomor!),
            ),
          if (detailSurah.suratSelanjutnya != null)
            IconButton(
              tooltip:
                  "Surat Selanjutnya: ${detailSurah.suratSelanjutnya!.namaLatin}",
              icon: const Icon(Icons.chevron_right_rounded, size: 32),
              onPressed: () =>
                  _pindahSurat(detailSurah.suratSelanjutnya!.nomor!),
            ),
          const SizedBox(width: 8),
        ],
      ),
      body: detailSurah.nama == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // summon widget header
                SurahHeader(detailSurah: detailSurah, player: player),

                // list ayat
                Expanded(
                  child: ListView.builder(
                    itemCount: ayatList.length,
                    itemBuilder: (context, index) {
                      return AyatItem(ayat: ayatList[index]);
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
