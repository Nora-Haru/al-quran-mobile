import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:al_quran_mobile/data/models/details/detail_surah_model.dart';

class SurahHeader extends StatelessWidget {
  final DetailSurahModel detailSurah;
  final AudioPlayer player;

  const SurahHeader({
    super.key,
    required this.detailSurah,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // nama Surah
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                detailSurah.namaLatin ?? '',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                detailSurah.nama ?? '',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.blueGrey.withValues(alpha: 0.5),
            thickness: 1,
            height: 20,
          ),

          // info & play button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '(${detailSurah.arti})',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '${detailSurah.tempatTurun?.toUpperCase()} | ${detailSurah.jumlahAyat} Ayat',
                  ),
                ],
              ),

              // tombol play/pause audito
              StreamBuilder<PlayerState>(
                stream: player.playerStateStream,
                builder: (context, snapshot) {
                  final playerState = snapshot.data;
                  final processingState = playerState?.processingState;
                  final playing = playerState?.playing ?? false;

                  if (processingState == ProcessingState.loading ||
                      processingState == ProcessingState.buffering) {
                    return const SizedBox(
                      width: 48,
                      height: 48,
                      child: CircularProgressIndicator(),
                    );
                  } else if (playing) {
                    return IconButton(
                      icon: Icon(
                        Icons.pause_circle_filled,
                        size: 48,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      onPressed: player.pause,
                    );
                  } else {
                    return IconButton(
                      icon: Icon(
                        Icons.play_circle_filled,
                        size: 42,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      onPressed: player.play,
                    );
                  }
                },
              ),
            ],
          ),

          // slider
          StreamBuilder<Duration>(
            stream: player.positionStream,
            builder: (context, positionSnapshot) {
              final position = positionSnapshot.data ?? Duration.zero;
              return StreamBuilder<Duration?>(
                stream: player.durationStream,
                builder: (context, durationSnapshot) {
                  final duration = durationSnapshot.data ?? Duration.zero;
                  return Slider(
                    value: position.inSeconds.toDouble().clamp(
                      0,
                      duration.inSeconds.toDouble(),
                    ),
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    onChanged: (value) =>
                        player.seek(Duration(seconds: value.toInt())),
                    activeColor: Theme.of(context).colorScheme.secondary,
                    inactiveColor: Colors.grey[300],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
