import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tickets'),
        ),
        body: SafeArea(
          child: ListView.separated(
              itemBuilder: (_, __) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.0),
                              color: Colors.orangeAccent,
                              child: Text(
                                'CINEMA TICKET',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Film: KungFu Panda',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Theater: 1 / Room: 1'),
                            Text('Price: \$4'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'A2',
                              style: TextStyle(fontSize: 40),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('05/02/2011'),
                            Text('8:30PM'),
                            SizedBox(height: 10.0),
                            BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: '6766934530',
                              height: 50,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (_, __) => Divider(
                    height: 1,
                  ),
              itemCount: 20),
        ));
  }
}
