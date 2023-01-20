// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';

// class VideoItems extends StatefulWidget {

// final VideoPlayerController videoPlayerController;
// final bool looping;
// final bool autoplay;


// VideoItems({required this.videoPlayerController,required this.looping,required this.autoplay});

//   @override
//   State<VideoItems> createState() => _VideoItemsState();
// }

// class _VideoItemsState extends State<VideoItems> {

// late ChewieController _chewieController;

// @override
//   void initState() {
//     super.initState();
//     _chewieController = ChewieController(
//       videoPlayerController: widget.videoPlayerController,
//       aspectRatio: 10/8,
//       autoInitialize: true,
//       autoPlay: widget.autoplay,
//       looping: widget.looping,
//       );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _chewieController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Chewie(controller: _chewieController);
//   }
// }