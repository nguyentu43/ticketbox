import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'buy_page.dart';

class SinglePage extends StatefulWidget {
  SinglePage({Key key}) : super(key: key);

  @override
  _SinglePageState createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  var _ytController;

  @override
  void initState() {
    _ytController = YoutubePlayerController(
        initialVideoId: 'PXi3Mv6KMzY',
        flags: YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: YoutubePlayer(
                  controller: _ytController,
                ),
                height: 200,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: 'kungfu_0',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                              image: AssetImage('assets/images/cover.jpg'),
                              height: 200),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('KungFu Panda',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10.0,
                              ),
                              Wrap(
                                spacing: 5.0,
                                runSpacing: 5.0,
                                children: [
                                  Chip(
                                    backgroundColor: Colors.amber,
                                    label: Text('2008',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Chip(
                                    label: Text('180 mins',
                                        style: TextStyle(color: Colors.white)),
                                    backgroundColor: Colors.teal,
                                  ),
                                  Chip(
                                    label: Text('Cartoon',
                                        style: TextStyle(color: Colors.white)),
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  Chip(
                                    label: Text('Action',
                                        style: TextStyle(color: Colors.white)),
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  Chip(
                                    label: Text('Adventure',
                                        style: TextStyle(color: Colors.white)),
                                    backgroundColor: Colors.blueAccent,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => BuyPage()));
                                  },
                                  child: Text('Buy now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0)),
                                  style: OutlinedButton.styleFrom(
                                      padding: EdgeInsets.all(15.0),
                                      backgroundColor: Colors.orangeAccent))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              DefaultTabController(
                  length: 2,
                  child: SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          child: TabBar(
                            labelColor: Colors.blue,
                            tabs: [Tab(text: 'Details'), Tab(text: 'Reviews')],
                          ),
                        ),
                        Expanded(
                            child: TabBarView(children: [
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                  "The Dragon Warrior has to clash against the savage Tai Lung as China's fate hangs in the balance. However, the Dragon Warrior mantle is supposedly mistaken to be bestowed upon an obese panda who is a novice in martial arts."),
                            ),
                          ),
                          ListView.separated(
                              itemBuilder: (_, __) => ListTile(
                                    leading: CircleAvatar(
                                      child: Text('M',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      backgroundColor: Colors.orangeAccent,
                                    ),
                                    title: Text('hello'),
                                    subtitle: Text('Member'),
                                  ),
                              separatorBuilder: (_, __) => Divider(height: 1),
                              itemCount: 10)
                        ]))
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
