import 'package:car_news_ecommerce/Model/ModelVideos.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CardVideos extends StatelessWidget {
  final ModelVideos videos;
  CardVideos({required this.videos});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            YoutubePlayer(
              controller: YoutubePlayerController(
                  initialVideoId: videos.url,
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                  )),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blue,
              progressColors: ProgressBarColors(
                  playedColor: Colors.blue, handleColor: Colors.blueAccent),
            ),
            Text(
              videos.desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  // fontStyle: FontStyle.normal,
                  fontFamily: 'DancingScript'),
            ),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
