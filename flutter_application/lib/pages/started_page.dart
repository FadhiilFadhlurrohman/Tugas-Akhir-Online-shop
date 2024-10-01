import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:flutter_application/main.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart'; ditaro di tempat buat ngelink in nya

void main() => runApp(StartedPage());

class StartedPage extends StatelessWidget {
  StartedPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 316,
            ),
            child: Text(
              'Frost Shop',
              style: GoogleFonts.montserrat(
                color: Color(0xffCFCFCF),
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 96),
          Center(
            child: Image.asset(
              'assets/images/started.png',
              width: size.width * 0.90,
              height: size.height * 0.40,
            ),
          ),
          SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FrostShop',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffCFCFCF),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Tempatnya beli \nBarang Berkualitas \nDan Trendi.',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 53),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        "Let's Start",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff6C5ECF),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Start extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Frost shop',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Etalase"),
//             backgroundColor: Colors.blueAccent,
//           ),
//           body: SafeArea(
//               child: Container(
//                   margin: EdgeInsets.only(
//                       left: 0.0, top: 0.0, right: 0, bottom: 0.0),
//                   padding: EdgeInsets.only(
//                       left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
//                   child: Column(
//                     children: <Widget>[
//                       Image(
//                         image: AssetImage('assets/images/sample.jpg'),
//                         height: 200,
//                       ),
//                       Text(
//                         "DOMPET STNK WATERPROOF",
//                         style: mainheader,
//                       ),
//                       Text("YUK ORDER SEKARANG 😉"),
//                       Image(
//                         image: AssetImage('assets/images/b.jpg'),
//                         height: 270,
//                       ),
//                     ],
//                   )))),
//     );
//   }
// }
                    // Image.asset(
                    //   'assets/images/three_dots.png',
                    //   width: size.width*0.3, //ganti size.widht atau heigh biar nyeusai in sama tampilan screen
                    //   height: size.height*0.1,
                    // ),