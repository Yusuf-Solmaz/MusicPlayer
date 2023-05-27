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
  var firstPageText =
      'A podcast is an episodic series of spoken word digital audio files that a user can download to a  personal device for easy listening.';

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
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90.00),
                  topRight: Radius.circular(
                      90.00)), // Köşeleri kavisleştirmek için kullanılır
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
          child: Text(
              textAlign: TextAlign.center,
              firstPageText,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 45),
          width: 60,
          height: 8,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 1),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF7B8085),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 21,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF525298),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF7B8085),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 70),
          alignment: Alignment.center,
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
            ),
            onPressed: () {},
            child: Icon(
              Icons.arrow_forward,
              color: Color(0xFF525298),
              size: 35.0,
            ),
          ),
        ),
      ],
    );
  }
}
