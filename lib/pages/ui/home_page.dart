import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _key = GlobalKey<SimpleFoldingCellState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "2E2D4E".toColor(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 16, right: 16),
                    height: MediaQuery.of(context).size.height / 6,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Saldo Anda',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  )),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/top_up1.png'),
                                    )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 16),
                                    child: Text(
                                      'Top Up',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: '726A6A'.toColor(),
                          ),
                          SizedBox(
                            height: 6,
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
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 20, left: 16, right: 16),
            //   height: MediaQuery.of(context).size.height / 6,
            //   width: double.infinity,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         height: 20,
            //         width: 20,
            //         color: Colors.red,
            //       ),
            //       Text(
            //         'Namma',
            //       ),
            //       Text(
            //         'Namma',
            //       ),
            //       Text(
            //         'Namma',
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 30, left: 16, right: 16),
            //   height: MediaQuery.of(context).size.height / 6,
            //   width: double.infinity,
            //   color: Colors.red,
            // ),

            //

            Container(
              // color: Colors.green,
              child: SimpleFoldingCell.create(
                key: _key,
                frontWidget: _frontWidget(),
                innerWidget: _innerWidget(),
                onOpen: () => print('Open'),
                onClose: () => print('Close'),
                cellSize: Size(MediaQuery.of(context).size.width, 90.0),
                padding: EdgeInsets.all(16),
                animationDuration: Duration(seconds: 1),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'History Transaksi',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 6, left: 16, right: 16),
              height: MediaQuery.of(context).size.height / 7,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "343655".toColor(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6, left: 16, right: 16),
              height: MediaQuery.of(context).size.height / 7,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "343655".toColor(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6, left: 16, right: 16),
              height: MediaQuery.of(context).size.height / 7,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "343655".toColor(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6, left: 16, right: 16),
              height: MediaQuery.of(context).size.height / 7,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "343655".toColor(),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 6, left: 16, right: 16),
              height: MediaQuery.of(context).size.height / 6,
              width: double.infinity,
              color: Colors.red,
            ),

            // Column(
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text('INI TEXT'),
            //         Text('INI TEXT'),
            //       ],
            //     ),
            //     Text('INI TEXT'),
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  Widget _frontWidget() {
    return Container(
      color: "2E2D4E".toColor(),
      // color: Colors.green,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/scan.png'),
                          ),
                          Text(
                            'Scan',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/transfer.png'),
                          ),
                          Text(
                            'Transfer',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/pulsa.png'),
                          ),
                          Text(
                            'Pulsa',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _key?.currentState?.toggleFold(),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 9,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "343655".toColor(),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 8,
                            ),
                            Image(
                              image: AssetImage('assets/images/lainnya.png'),
                            ),
                            Text(
                              'Lainnya',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     'YO WASAP GUYS',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 22,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   right: 5,
          //   bottom: 0,
          //   child: FlatButton(
          //     onPressed: () => _key?.currentState?.toggleFold(),
          //     child: Text('Open'),
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _innerWidget() {
    return Container(
      // color: Colors.blue,
      // alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/pln.png'),
                          ),
                          Text(
                            'PLN',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/air.png'),
                          ),
                          Text(
                            'Air PDAM',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/bpjs.png'),
                          ),
                          Text(
                            'BPJS',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/tv.png'),
                          ),
                          Text(
                            'Tv Kabel',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "343655".toColor(),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Image(
                            image: AssetImage('assets/images/sosial.png'),
                          ),
                          Text(
                            'Sosial',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _key?.currentState?.toggleFold(),
                      child: Container(
                        margin: EdgeInsets.only(left: 14),
                        height: MediaQuery.of(context).size.height / 9,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "343655".toColor(),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 8,
                            ),
                            Image(
                              image: AssetImage('assets/images/perkecil.png'),
                            ),
                            Text(
                              'Perkecil',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Padding(
          //     padding: EdgeInsets.all(18.0),
          //     child: Text(
          //       'Hayoloo',
          //       style: TextStyle(
          //         fontSize: 18,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Image(
          //     image: AssetImage('assets/images/logo.png'),
          //     height: 100,
          //   ),
          // ),
          // Positioned(
          //   right: 5,
          //   bottom: 0,
          //   child: FlatButton(
          //     onPressed: () => _key?.currentState?.toggleFold(),
          //     child: Text('Close'),
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }
}

// Container(
//                           margin: EdgeInsets.only(top: 40, left: 16, right: 16),
//                           child: Text(
//                             'Nama Saldo',
//                           ),
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(left: 16, right: 16),
//                           child: Text(
//                             'Nama Saldo',
//                           ),
//                         )
