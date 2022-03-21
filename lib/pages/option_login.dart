part of 'pages.dart';

class OptionLoginPage extends StatefulWidget {
  final Function? onCloseButtonPressed;

  OptionLoginPage({this.onCloseButtonPressed});

  @override
  _OptionLoginPageState createState() => _OptionLoginPageState();
}

class _OptionLoginPageState extends State<OptionLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: ijauColor,
            ),
          ),
          SafeArea(
            child: Container(
              color: whiteColor,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    color: whiteColor,
                    width: double.infinity,
                    height: 180,
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Masuk ke Ngoleh.id',
                            style: blackFontStyle1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: Image.asset(
                            'assets/ngoleh.jpeg',
                            height: 60,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            'Saya ingin masuk sebagai',
                            style: blackFontStyle2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children:
                  //   ],
                  // ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => CostumerLoginPage());
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              // width: double.infinity,
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  )
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: defaultMargin),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/ngoleh.jpeg'),
                                              // fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   margin: EdgeInsets.only(left: 30),
                                        //   child: Text(
                                        //     'Pencari Kos',
                                        //     style: blackFontStyle3.copyWith(
                                        //       fontSize: 18,
                                        //     ),
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        'Costumer',
                                        style: blackFontStyle3.copyWith(
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              // Get.to(() => SignInPemilikPage());
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              // width: double.infinity,
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  )
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: defaultMargin),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/ngoleh.jpeg'),
                                              // fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   margin: EdgeInsets.only(left: 30),
                                        //   child: Text(
                                        //     'Pencari Kos',
                                        //     style: blackFontStyle3.copyWith(
                                        //       fontSize: 18,
                                        //     ),
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        'Vendor',
                                        style: blackFontStyle3.copyWith(
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       Get.to(SignInPemilikPage());
                        //     },
                        //     child: Container(
                        //       margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        //       // width: double.infinity,
                        //       width: MediaQuery.of(context).size.width - 50,
                        //       height: 90,
                        //       decoration: BoxDecoration(
                        //         shape: BoxShape.rectangle,
                        //         borderRadius: BorderRadius.circular(5),
                        //         color: whiteColor,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.grey.withOpacity(0.5),
                        //             spreadRadius: 1,
                        //             blurRadius: 5,
                        //             offset: Offset(
                        //                 0, 4), // changes position of shadow
                        //           )
                        //         ],
                        //       ),
                        //       child: Container(
                        //         margin: EdgeInsets.symmetric(
                        //             horizontal: defaultMargin),
                        //         child: Column(
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [
                        //             Row(
                        //               children: [
                        //                 Container(
                        //                   width: 65,
                        //                   height: 65,
                        //                   decoration: BoxDecoration(
                        //                     image: DecorationImage(
                        //                       image: AssetImage(
                        //                           'assets/login_pemilik.png'),
                        //                       // fit: BoxFit.cover,
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Container(
                        //                   margin: EdgeInsets.only(left: 30),
                        //                   child: Text(
                        //                     'Pemilik Kos',
                        //                     style: blackFontStyle3.copyWith(
                        //                       fontSize: 18,
                        //                     ),
                        //                   ),
                        //                 )
                        //               ],
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
