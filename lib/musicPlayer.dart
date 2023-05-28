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

class MusicPlayerBody extends StatelessWidget {


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
          margin: EdgeInsets.only(top:20),
          width: 295,
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The missing 69 percent of the universe",
                style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Claire Malone",
                  style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:150),
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
                  onPressed: () {


                  },
                  icon: Icon(
                    Icons.play_circle,
                    size: 40,
                  ),
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
/*child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: Color(0xFF1F1D2B),
              foregroundColor: Colors.green,
              padding: EdgeInsets.all(12),

                ),
            onPressed: (){    },
            child: Icon(
               Icons.play_circle,
            size: 50,
              color: Colors.white,*/