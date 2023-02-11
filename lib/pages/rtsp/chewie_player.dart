import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewiePlayer extends StatefulWidget {
  const ChewiePlayer({super.key});

  @override
  State<ChewiePlayer> createState() => _ChewiePlayerState();
}

class _ChewiePlayerState extends State<ChewiePlayer> {
  final videoPlayerController = VideoPlayerController.network(
    'https://1c13dee972d7.entrypoint.cloud.wowza.com/app-74X3054r/ngrp:49f16905_all/playlist.m3u8',
  );

  late ChewieController chewieController;
  @override
  void initState() {
    super.initState();
    playerSetup();
  }

  playerSetup() async {
    await videoPlayerController.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    chewieController.dispose();
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chewie(
        controller: chewieController,
      ),
    );
  }
}
