import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Container(
            // color: Colors.grey,
            height: deviceHeight,
            child: Wrap(
              direction: Axis.vertical,
              spacing: 8.0,
              runSpacing: 4.0,
              children: <Widget>[
                Chip(
                  label: Text('Chip 1'),
                ),
                Chip(
                  label: Text('Chip 2'),
                ),
                Chip(
                  label: Text('Chip 3'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: const Center(
                    child: Text('Container 1'),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                  child: Center(
                    child: Text('Container 2'),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Container 3'),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.yellow,
                  child: Center(
                    child: Text('Container 4'),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
