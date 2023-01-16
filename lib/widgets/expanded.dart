import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          // 1st container
          Container(
            color: Colors.yellow,
            height: deviceWidth / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.red,
                ),
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.green,
                ),
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.teal,
                ),
              ],
            ),
          ),
          //second container
          /// Expanded used
          Container(
            color: Colors.grey,
            height: deviceWidth / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.black,
                ),
                Expanded(
                  child: Container(
                    height: deviceHeight / 15,
                    width: deviceWidth / 5,
                    color: Colors.indigo,
                    alignment: Alignment.center,
                    child: const Text('Expanded'),
                  ),
                ),
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.redAccent,
                ),
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),
          // third container
          Container(
            color: Colors.orange,
            height: deviceWidth / 10,
            child: Row(
              children: [
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.red,
                ),
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.green,
                ),
                Container(
                  height: deviceHeight / 15,
                  width: deviceWidth / 5,
                  color: Colors.teal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
