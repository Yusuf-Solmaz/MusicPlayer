import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF1F1D2B),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF1F1D2B),
        body: SafeArea(
          child: FirstPageBody(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPageBody extends StatelessWidget {

  var title = 'Podkes';
  var firstPageText = 'A podcast is an episodic series of spoken word digital audio files that a user can download to a  personal device for easy listening.';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 67),
            width: 240,
            height: 317,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(90.00),topRight: Radius.circular(90.00)), // Köşeleri kavisleştirmek için kullanılır
              image: DecorationImage(
                image: AssetImage("images/img_4.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        Container(
          width: 332,
            height: 55,
            margin: EdgeInsets.only(top: 18),
            child: Text(textAlign: TextAlign.center,firstPageText,style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w300,
            )),),
        Container(
        ),
        Container()
      ],
    );
  }
}
