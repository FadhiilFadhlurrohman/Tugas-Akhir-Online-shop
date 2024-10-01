import 'package:flutter_application/main.dart';
import 'package:flutter_application/widgets/product_list.dart';
import 'package:flutter_application/widgets/variations_tile.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              HomePage(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/box_left.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/product_two.png',
              width: 375,
              height: 387,
            ),
            // Image.asset(
            //   'assets/images/two_circle.png',
            //   width: 28,
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 34.0, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dompet STNK Kain',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/star_icon.png',
                        width: 88,
                        height: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '(16)',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp150.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Rp850.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Dompet STNK ini terbuat dari bahan kain \nmat, dompet yang trendi ini sangat disukai banyak orang \ndan juga bisa dipakai sebagai dompet gantung kunci kendaraan.',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Related Products',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/images/product_eight.png',
                            name: 'Nike Yezzy T-20..',
                            ratings: 'assets/images/star_icon.png',
                            amount: '(105)',
                            price: 'Rp1.237.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/images/product_nine.png',
                            name: 'Nike P-Y671 Exc..',
                            ratings: 'assets/images/star_icon.png',
                            amount: '(105)',
                            price: 'Rp1.237.000',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/images/product_ten.png',
                            name: 'Nike Yezzy T-20..',
                            ratings: 'assets/images/star_icon.png',
                            amount: '(105)',
                            price: 'Rp1.237.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/images/product_two2.png',
                            name: 'Nike Air Force X..',
                            ratings: 'assets/images/star_icon.png',
                            amount: '(105)',
                            price: 'Rp1.237.000',
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      Text(
                        "Aplikasi Ini dibuat untuk menyelesaikan tugas Penulisan Ilmiah Universitas Gunadarma \ndan membantu promosi produk Frost Shop \n\nDibuat oleh : \nMuhammad Fadhiil Fadhlurrohman \n 54419108 \n 4IA16",
                        style: GoogleFonts.montserrat(
                          color: Color(0xfFF8F7FD),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff030E22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Text(
                'Rp150.000',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 153,
                height: 47,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff6C5ECF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                  onPressed: () async {
                    var linkWA =
                        "https://wa.me/+6285782261248?text=Hai Saya tertarik dengan barang yang ada di etalase";
                    await launch(linkWA);
                  },
                  onLongPress: () {},
                  child: Text(
                    'Beli Sekarang',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              label: '',
            )
          ],
        ),
      ),
    );
  }

  var linkWA = "https://wa.me/+6285782261248";
}
