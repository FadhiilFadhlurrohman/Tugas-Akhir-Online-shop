import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/product_list.dart';
import 'package:flutter_application/pages/search_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: 295,
                      height: 40,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: 11,
                            bottom: 11,
                          ),
                          fillColor: Color(0xff2C3545),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Dompet apa yang sedang anda cari...",
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xff68687A),
                          ),
                          prefixIcon: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          SearchPage(),
                                  transitionDuration: Duration(seconds: 0),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.search,
                              color: Color(0xff68687A),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  InkWell(
                    onTap: () async {
                      var tokped =
                          "https://www.tokopedia.com/xfrostshop?source=universe&st=product";
                      await launch(tokped);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff2C3545),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/checkout_icon.png',
                            width: 28,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: Color(0xff6C5ECF),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27.0, left: 8),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Promo \nDiskon up to 30%',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 8),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    side: BorderSide(
                                      color: Color(0xffF8F7FD),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xffF8F7FD),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16.0, right: 24),
                              child: Image.asset(
                                'assets/images/product_one.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: Color(0xff21AE7B),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27.0, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dapatkan \nPromo 2.2',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 8),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    side: BorderSide(
                                      color: Color(0xffF8F7FD),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xffF8F7FD),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20.0,
                                left: 20,
                              ),
                              child: Image.asset(
                                'assets/images/man_icon.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32.0,
                left: 16,
              ),
              child: Text(
                'Produk yang sering dicari',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15, right: 15, bottom: 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/images/product_two.png',
                        name: 'Dompet STNK ',
                        ratings: 'assets/images/star_icon.png',
                        amount: '(48)',
                        price: 'Rp150.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/images/watch.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/images/star_icon.png',
                        amount: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/images/product_three.png',
                        name: 'Philips LED Wi-F..',
                        ratings: 'assets/images/star_icon.png',
                        amount: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/images/product_four.png',
                        name: 'Garnier Pure Act..',
                        ratings: 'assets/images/star_icon.png',
                        amount: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/images/product_five.png',
                        name: 'Rexus Headphon..',
                        ratings: 'assets/images/star_icon.png',
                        amount: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/images/product_six.png',
                        name: 'Airpods',
                        ratings: 'assets/images/star_icon.png',
                        amount: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    "You've reached the end",
                    style: GoogleFonts.montserrat(
                      color: Color(0xfFF8F7FD),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var tokped = "https://www.tokopedia.com/xfrostshop?source=universe&st=product";
