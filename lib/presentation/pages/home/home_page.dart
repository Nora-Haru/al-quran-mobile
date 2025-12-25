import 'package:al_quran_mobile/presentation/pages/details/detail_surah_page.dart';
import 'package:flutter/material.dart';
import 'package:al_quran_mobile/data/models/surah_model.dart';
import 'package:al_quran_mobile/data/services/remote_resource.dart';
import 'package:al_quran_mobile/presentation/widgets/surah_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final remoteResource = RemoteResource();
  final List<SurahModel> surahList = [];

  @override
  void initState() {
    super.initState();
    surahList.clear();
    fetchData();
  }

  void fetchData() async {
    final result = await remoteResource.fetchQuran();
    if (!mounted) return;

    result.fold(
      (error) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $error')));
      },
      (data) {
        setState(() {
          surahList.addAll(data);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Al-Qur\'an'))),
      body: ListView.builder(
        itemCount: surahList.length,
        itemBuilder: (context, index) {
          final surah = surahList[index];

          return SurahCard(
            surah: surah,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailSurahPage(id: surah.nomor ?? 0),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
