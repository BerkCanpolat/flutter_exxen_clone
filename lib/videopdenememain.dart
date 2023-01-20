// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_exxen_clone/video.dart';
// import 'package:video_player/video_player.dart';

// class VideoDeneme extends StatefulWidget {
//   const VideoDeneme({super.key});

//   @override
//   State<VideoDeneme> createState() => _VideoDenemeState();
// }

// class _VideoDenemeState extends State<VideoDeneme> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: ListView(
//         children: [
//            Container(
//             width: double.infinity,
//             height: 400,
//              child: VideoItems(
//                 videoPlayerController: VideoPlayerController.asset("assets/deneme4.mp4"),
//                 looping: true, 
//                 autoplay: true,
//                 ),
//            ),
//         ],
//       ),
//     );
//   }
// }