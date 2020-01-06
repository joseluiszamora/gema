import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'delayed_animation.dart';

class InicioHomeScreenPage extends StatefulWidget {
  InicioHomeScreenPage({Key key}) : super(key: key);

  @override
  _InicioHomeScreenPageState createState() => _InicioHomeScreenPageState();
}

class _InicioHomeScreenPageState extends State<InicioHomeScreenPage> with SingleTickerProviderStateMixin{
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF6ca125),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                DelayedAnimation(
                  child: Column(
                    children: <Widget>[
                      AvatarGlow(
                        endRadius: 90,
                        duration: Duration(milliseconds: 2000),
                        glowColor: Colors.white24,
                        repeat: true,
                        repeatPauseDuration: Duration(milliseconds: 100),
                        startDelay: Duration(milliseconds: 1000),
                        child: Material(
                          elevation: 8.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: Image.asset('assets/images/logo.png'),
                            radius: 50.0,
                          ))
                      ),
                      DelayedAnimation(
                        child: Text(
                          "Frente GEMA",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: color)),
                        delay: delayedAmount + 5000,
                      )
                    ],
                  )
                ),
                SizedBox( height: 50.0 ),
                
                DelayedAnimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child: _animatedButtonUI('Inicio'),
                    ),
                  ),
                  delay: delayedAmount + 4000
                ),
                
                SizedBox( height: 15.0 ),
                
                DelayedAnimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child: _animatedButtonUI('Noticias'),
                    ),
                  ),
                  delay: delayedAmount + 4000
                ),
                
                SizedBox( height: 15.0 ),
                
                DelayedAnimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child: _animatedButtonUI('Documentos'),
                    ),
                  ),
                  delay: delayedAmount + 4000
                ),

                SizedBox( height: 15.0 ),
                
                DelayedAnimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child: _animatedButtonUI('Nosotros'),
                    ),
                  ),
                  delay: delayedAmount + 4000
                )
              ],
            ),
          )
        )
    );
  }

  Widget _animatedButtonUI (String title) {
    return Container(
      height: 60,
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6ca125),
          )
        )
      )
    );
  }
  
  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
