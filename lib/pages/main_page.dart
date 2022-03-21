part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int? initialPage;

  MainPage({this.initialPage});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    _index = widget.initialPage!;
    pageController = PageController(initialPage: widget.initialPage!);
  }

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30, color: Colors.white),
      // Icon(Icons.category, size: 30, color: Colors.white),
      Icon(Icons.shopping_cart, size: 30, color: Colors.white),
      Icon(Icons.person, size: 30, color: Colors.white),
    ];
    final pages = <Widget>[
      HomePage(),
      // CategoryPage(),
      OrdersPage(),
      ProfilPage(),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.red,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: 'FB743E'.toColor(),
          height: 70,
          index: _index,
          items: items,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          }),
      body: pages[_index],
    );
  }
}
