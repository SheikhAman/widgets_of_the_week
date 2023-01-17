import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({super.key});

  @override
  State<OpacityWidget> createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  double _opacity = 1.0;

  void _changeOpacity() {
    setState(() {
      _opacity = _opacity == 0 ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              // blending widgets in stack with opacity
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                ],
              ),
              // Animated opacity widget used and i used stack to blend widgets
              SizedBox(
                height: 80,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Colors.teal,
                    height: 100,
                    width: 100,
                  ),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: _opacity,
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),

              ElevatedButton(
                  onPressed: () {
                    _changeOpacity();
                  },
                  child: Text('AnimatedOpacity'))
            ],
          ),
        ),
      ),
    );
  }
}
