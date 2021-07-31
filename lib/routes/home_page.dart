import 'package:flutter/material.dart';
import 'package:ticketbox/routes.dart';

import 'account_page.dart';
import 'single_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1, viewportFraction: 0.5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteGeneration.searchPage);
                      }),
                  IconButton(
                      icon: Icon(Icons.list),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteGeneration.ticketsPage);
                      }),
                  IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => AccountPage()));
                      })
                ],
              )
            ],
          ),
          SizedBox(
            height: 250.0,
            child: PageView.builder(
                itemCount: 5,
                controller: _pageController,
                itemBuilder: (_, index) => AnimatedBuilder(
                    child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('assets/images/cover.jpg'),
                                fit: BoxFit.cover))),
                    animation: _pageController,
                    builder: (_, widget) {
                      double value = 1;
                      if (_pageController.position.haveDimensions) {
                        value = _pageController.page - index;
                        value = (1 - (value.abs() * 0.25)).clamp(0.0, 1.0);
                      }
                      return Center(
                        child: SizedBox(
                          height: Curves.easeInOut.transform(value) * 250,
                          child: widget,
                        ),
                      );
                    })),
          ),
          SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 4, color: Colors.orangeAccent))),
                  child: Text('NEWEST', style: TextStyle(fontSize: 30.0))),
              Container(
                  height: 180,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 10.0),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        7,
                        (index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SinglePage()));
                              },
                              child: Hero(
                                tag: 'kungfu_$index',
                                child: Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/cover.jpg'),
                                            fit: BoxFit.cover))),
                              ),
                            )),
                  )),
              Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 4, color: Colors.tealAccent))),
                  child: Text('MOST VIEWED', style: TextStyle(fontSize: 30.0))),
              Container(
                  height: 180,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 10.0),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        7,
                        (index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/single');
                              },
                              child: Hero(
                                tag: 'kungfu2_$index',
                                child: Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/cover.jpg'),
                                            fit: BoxFit.cover))),
                              ),
                            )),
                  )),
              SizedBox(height: 10.0)
            ],
          ),
        ],
      ),
    )));
  }
}
