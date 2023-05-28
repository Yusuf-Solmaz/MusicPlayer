import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/Data/song.dart';
import 'package:music_player/musicPlayer.dart';

/*
void main() {
  runApp(SecondPage());
}*/

class SecondPage extends StatelessWidget {
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
          title: const Center(
            child: Text(
              'Podkes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Color(0xFF1F1D2B),
        body: SafeArea(
          child: SecondBody(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SecondBody extends StatelessWidget {

  var firstSong = Song("Claire Malone","The missing 96 percent of the universe");
  var secondSong = Song("Abumenyang","How Dolly Parton led me to an epiphany");
  var thirdSong = Song("TirMcDohl","The missing 96 percent off the universe");
  var fourthSong = Song("Denny Kulon","Ngobam with Denny Caknan");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 327,
          height: 53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFF252836),
          ),
          child: Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.0, top: 10.0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2F3142),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('All'),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2F3142),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Life'),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2F3142),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Comedy', overflow: TextOverflow.ellipsis),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2F3142),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Tech'),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: SizedBox(
            height: 80.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Trending",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MusicPlayer()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                                color: Color(0xFFB548C6),
                                child: Image.asset('images/img.png',
                                    fit: BoxFit.cover)),
                            SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                firstSong.songName,
                                style: GoogleFonts.inter(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(firstSong.singer,style: GoogleFonts.inter(
                                  fontSize: 10, fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // İkinci resme tıklandığında yapılacak işlemler
                        },
                        child: Column(
                          children: [
                            Container(
                                color: Color(0xFF32A7E2),
                                child: Image.asset('images/img_1.png',
                                    fit: BoxFit.cover)),
                            const SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                secondSong.songName,
                                style: GoogleFonts.inter(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(secondSong.singer,style: GoogleFonts.inter(
                                  fontSize: 10, fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Üçüncü resme tıklandığında yapılacak işlemler
                        },
                        child: Column(
                          children: [
                            Container(
                                color: Color(0xFFEC663C),
                                child: Image.asset('images/img_3.png',
                                    fit: BoxFit.cover)),
                            SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                thirdSong.songName,
                                style: GoogleFonts.inter(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(thirdSong.singer,style: GoogleFonts.inter(
                                  fontSize: 10, fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Dördüncü resme tıklandığında yapılacak işlemler
                        },
                        child: Column(
                          children: [
                            Container(
                                color: Color(0xFFFFBF47),
                                child: Image.asset('images/img_2.png',
                                    fit: BoxFit.cover)),
                            SizedBox(height: 10.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                fourthSong.songName,
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(fourthSong.singer,style: GoogleFonts.inter(
                                  fontSize: 10, fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top:20),
            decoration: const BoxDecoration(
              color: Color(0xFF252836),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                //const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.home),
                          onPressed: () {},
                        ),
                        const Text('Home'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.music_note),
                            onPressed: () {},
                          ),
                          const Text('Library'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.person),
                            onPressed: () {},
                          ),
                          const Text('Profile'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}