import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search movie',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(height: 10.0),
            SizedBox(
                height: 40.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: DropdownButton(
                          onChanged: (text) {},
                          underline: SizedBox(),
                          value: 'Top Rating',
                          items: ['Newest', 'Top Rating']
                              .map<DropdownMenuItem<String>>((item) =>
                                  DropdownMenuItem(
                                      child: Text(item), value: item))
                              .toList()),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: DropdownButton(
                          onChanged: (text) {},
                          underline: SizedBox(),
                          value: 'Newest',
                          items: ['Newest', 'Top Rating']
                              .map<DropdownMenuItem<String>>((item) =>
                                  DropdownMenuItem(
                                      child: Text(item), value: item))
                              .toList()),
                    ),
                  ],
                )),
            SizedBox(height: 10.0),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 3 / 4,
                    children: List.generate(
                      20,
                      (index) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/cover.jpg'),
                                  fit: BoxFit.cover))),
                    )))
          ],
        ),
      ),
    ));
  }
}
