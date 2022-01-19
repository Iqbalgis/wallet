import 'package:ewalllet/pages/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "2E2D4E".toColor(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  )),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40, top: 30),
                      height: MediaQuery.of(context).size.height / 1.9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30, left: 16, right: 16),
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Security Code',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            //PIN HERE
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Lupa Security Code?',
                              style: GoogleFonts.poppins(
                                color: '3368F1'.toColor(),
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 16),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/avatar.png'),
                                      )),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text(
                                            'Iqbalgis',
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text(
                                            '085736787213',
                                            style: GoogleFonts.poppins(
                                              color: '8C8989'.toColor(),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 20,
                                        right: 2,
                                      ),
                                      child: Text(
                                        'Rp',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 16),
                                      child: Text(
                                        '500.000',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),

                    // SizedBox(
                    //   height: 4,
                    // ),
                  ],
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: "3A3E82".toColor(),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        "Ganti Akun",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
