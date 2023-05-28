import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF1F1D2B),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF1F1D2B),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                'Now Playing',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 40,
            ),
            onPressed: () {},
          ),
        ),
        backgroundColor: Color(0xFF1F1D2B),
        body: SafeArea(
          child: MusicPlayerBody(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MusicPlayerBody extends StatefulWidget {
  @override
  State<MusicPlayerBody> createState() => _MusicPlayerBodyState();
}

class _MusicPlayerBodyState extends State<MusicPlayerBody> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;


  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((event) { 
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });
    
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration=newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Center(
          child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 50),
              width: 297,
              height: 280,
              color: Color(0xFFB548C6),
              child: Image.asset('images/img.png', fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 295,
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The missing 69 percent of the universe",
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Claire Malone",
                  style: GoogleFonts.inter(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) async {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatTime(position)),
              Text(formatTime(duration))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100),
          width: 160,
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    // Bir önceki şarkıyı açan işlemler
                  },
                  icon: Icon(
                    Icons.skip_previous,
                    size: 40,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_circle),
                    iconSize: 50,
                    onPressed: () async {

                    if(isPlaying){
                      await audioPlayer.pause();
                    }
                      else{
                        await audioPlayer.play(AssetSource('slow.mp3'));
                    }
                    },
                  ),
                ),

              Expanded(
                child: IconButton(
                  onPressed: () {
                    // Bir sonraki şarkıyı açan işlemler
                  },
                  icon: Icon(
                    Icons.skip_next,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

String formatTime(Duration duration){
  String twoDigits(int n) => n.toString().padLeft(2,"0");
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds
  ].join(":");
}


