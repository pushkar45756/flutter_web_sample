import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class RtspPlayer extends StatefulWidget {
  const RtspPlayer({super.key});

  @override
  State<RtspPlayer> createState() => _RtspPlayerState();
}

class _RtspPlayerState extends State<RtspPlayer> {
  late VlcPlayerController _videoPlayerController;

  Future<void> initializePlayer() async {}

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VlcPlayerController.network(
      // 'https://38fed4c84342.entrypoint.cloud.wowza.com/app-jHz1z41B/ngrp:c73185b8_all/playlist.m3u8',
      // 'https://media.w3.org/2010/05/sintel/trailer.mp4',
      // 'https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8',
      'https://1c13dee972d7.entrypoint.cloud.wowza.com/app-74X3054r/ngrp:49f16905_all/playlist.m3u8',
      hwAcc: HwAcc.full,
      autoPlay: true,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.stopRendererScanning();
    _videoPlayerController.dispose();
    // await _videoViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              var isPlaying = await _videoPlayerController.isPlaying();
              if (isPlaying == true) {
                _videoPlayerController.play();
              } else {
                _videoPlayerController.stop();
              }
            },
            child: const Text('Play')),
        Center(
          child: VlcPlayer(
            controller: _videoPlayerController,
            aspectRatio: 16 / 9,
            placeholder: const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}
