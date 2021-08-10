import 'package:car_news_ecommerce/Model/ModelVideos.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CardVideos extends StatelessWidget {
  final ModelVideos videos;
  CardVideos({required this.videos});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(8),
            child: YoutubePlayer(
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
          ),
          Text(
            videos.desc,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontFamily: 'DancingScript'),
          ),
          SizedBox(
            height: 7,
          )
        ],
      ),
    );
  }
}
