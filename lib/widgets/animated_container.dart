import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  Color _animatecolor = Colors.red;
  double _height = 100;
  double _width = 100;
  bool animate = false;

  nextAnimate() {
    _animatecolor = Colors.greenAccent;
    _height = 200;
    _width = 200;

    setState(() {});
  }

  backAnimate() {
    _animatecolor = Colors.red;
    _height = 100;
    _width = 100;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 2),
                color: _animatecolor,
                height: _height,
                width: _width,
              ),
              ElevatedButton(
                onPressed: () {
                  animate = !animate;
                  animate ? nextAnimate() : backAnimate();
                },
                child: Text('Implicit Animation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
