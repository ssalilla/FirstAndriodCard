import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()
  ));


class Home extends StatelessWidget {

  Container MyArticles (String imageVal, String heading, String subHeading)
  {
  return Container(
      width:300.0,
      child:Card(
      child:Wrap (
      children: [
        Image.network(imageVal),
      ListTile(
          title: Text(heading),
      subtitle: Text(subHeading),
          ),
  ],
      )
      )
      );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAS'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Container(
          margin:EdgeInsets.symmetric(vertical: 20.0),
          height: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
                  MyArticles('https://i.pinimg.com/originals/74/18/09/741809716ea15e4269d893855ac931a4.jpg', 'Heading', 'SubTitle'),
                  MyArticles('https://previews.123rf.com/images/ardely/ardely1807/ardely180700075/104709341-vector-abstract-irregular-polygonal-square-background-triangle-low-poly-pattern-light-pastel-color-g.jpg', 'Heading', 'SubTitle'),
                  MyArticles('https://i.pinimg.com/originals/5f/d5/70/5fd57064e846ebab0dfbc243ba2d17ad.jpg', 'Heading', 'SubTitle'),
                  MyArticles('https://previews.123rf.com/images/kreangagirl/kreangagirl1707/kreangagirl170700151/83158463-pastel-square-pattern-for-background-.jpg', 'Heading', 'SubTitle'),
                  MyArticles('https://png.pngtree.com/png-clipart/20190515/original/pngtree-purple-pastel-watercolor-frame-border-png-image_3687573.jpg', 'Heading', 'SubTitle'),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        child: Text('Click'),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

