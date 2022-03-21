part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _pinned = true;

  bool _floating = false;

  bool toggleValue = false;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://th.bing.com/th/id/R.a158d5fa147dd7c92533359ee73bbf92?rik=kWxpSZ%2fbQMtZjg&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fcWKcPiY.jpg&ehk=JaaBSU0c%2bDvJDQ6BFLGU4bL%2fF5vHU4TXpxTFXf9Scp8%3d&risl=&pid=ImgRaw&r=0',
      'https://vignette.wikia.nocookie.net/wearewarriors/images/6/61/Dark_Forest.jpg/revision/latest?cb=20180831145259',
      'https://image.winudf.com/v2/image/Y29tLkRyZWFtV2FsbHBhcGVycy5EYXJrRm9yZXN0MDFfc2NyZWVuc2hvdHNfMV82Y2RhODMwMA/screen-1.jpg?fakeurl=1&type=.jpg',
      'https://th.bing.com/th/id/R.ab730af25c7f5cb2cec45302fdc7f1e7?rik=5qUxk2bU%2fB1LfQ&riu=http%3a%2f%2fcdn.paperhi.com%2f1366x911%2f20130315%2flandscapes+nature+path+dark+forest+foggy+morning+view+1366x911+wallpaper_www.paperhi.com_78.jpg&ehk=u5JgdShrCcKFdHBrJgWWYkilYGL4s2iEOgq9Utw8r8A%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/OIP.hR5gRMB5vOALUfucJxx1zwHaEK?w=289&h=180&c=7&r=0&o=5&pid=1.7',
      'https://th.bing.com/th/id/OIP.G5Y3K6BT8FV9CGmIJU9DmwHaEo?w=281&h=180&c=7&r=0&o=5&pid=1.7',
      'https://th.bing.com/th/id/R.213c0bd7a38a3806e2a4f16e0d171c32?rik=SB8i7r0jAnexnQ&riu=http%3a%2f%2fpavbca.com%2fwalldb%2foriginal%2f8%2f1%2f7%2f385598.jpg&ehk=ikYXpDV3wEALvzrEZyaJch%2bmIeL4Cpa%2fWilUP0ARxvs%3d&risl=&pid=ImgRaw&r=0',
      'https://wallpapercave.com/wp/wp2784978.jpg',
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: [
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();

    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  pinned: _floating,
                  floating: false,
                  flexibleSpace: Container(),
                ),
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  expandedHeight: 60,
                  shadowColor: Colors.transparent,
                  pinned: _pinned,
                  flexibleSpace: Container(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 100,
                                // color: Colors.black,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/ngoleh.jpeg'))),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 150,
                            height: 35,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black12),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black26,
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SettingPage()));
                              },
                              child: Icon(
                                Icons.settings,
                                size: 35,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      CarouselSlider(
                                        options: CarouselOptions(
                                          height: 160.0,
                                          autoPlay: true,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              _current = index;
                                            });
                                          },
                                        ),
                                        items: imageSliders,
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: imgList
                                              .asMap()
                                              .entries
                                              .map((entry) {
                                            return GestureDetector(
                                              onTap: () => _controller
                                                  .animateToPage(entry.key),
                                              child: Container(
                                                width: 7.0,
                                                height: 7.0,
                                                margin: EdgeInsets.symmetric(
                                                  vertical: 8.0,
                                                  horizontal: 4.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: (Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? Colors.white
                                                          : 'FB743E'.toColor())
                                                      .withOpacity(
                                                    _current == entry.key
                                                        ? 0.9
                                                        : 0.3,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Kategori',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(right: 20),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: mockKategori
                                      .map((e) => KategoryCard(e))
                                      .toList(),
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Rekomendasi',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Text(
                                    'See All',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(right: 20),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: mockFood
                                      .map((e) => RekomendasiCard(e))
                                      .toList(),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Text(
                                    'Top Sales!',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Text(
                                    'See All',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(right: 20),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: mockFood
                                      .map((e) => RekomendasiCard(e))
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
