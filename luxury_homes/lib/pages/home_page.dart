import 'package:flutter/material.dart';
import 'package:luxury_homes/data.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState(); //returning private _home page
  }
}

class _HomePageState extends State<HomePage> {
  // declearing variable for dynamic different screen sizes
  var _deviceHeight;
  var _deviceWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featuredGamesWidget(),
        ],
      ),
    );
  }

  // feature games classes
  Widget _featuredGamesWidget() {
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _deviceWidth,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(featuredGames[0].coverImage.url),
          ),
        ),
      ),
    ); // this allows us to customise our box sizing, setting up customize scalling for different screen sizes
  }

  @override
  // TODO: implement widget
  HomePage get widget => super.widget;
}
