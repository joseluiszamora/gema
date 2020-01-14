import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'delayed_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:nice_button/nice_button.dart';

class InicioHomeScreenPage extends StatefulWidget {
  InicioHomeScreenPage({Key key}) : super(key: key);

  @override
  _InicioHomeScreenPageState createState() => _InicioHomeScreenPageState();
}

class _InicioHomeScreenPageState extends State<InicioHomeScreenPage> with SingleTickerProviderStateMixin{
  final int delayedAmount = 500;
  
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]);
    final color = Colors.white;
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
                      Text(
                        "Frente GEMA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: color))
                    ],
                  ),
                  delay: delayedAmount + 100),

                SizedBox( height: 50.0 ),
                
                DelayedAnimation(
                  child: Column(
                    children: <Widget>[
                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(15),
                        text: "Inicio",
                        textColor: Color(0xFF6ca125),
                        background: Colors.white,
                        onPressed: () { Navigator.pushNamed(context, '/informacion'); }),
                      
                      SizedBox( height: 15.0 ),

                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(15),
                        text: "Noticias",
                        textColor: Color(0xFF6ca125),
                        background: Colors.white,
                        onPressed: () { Navigator.pushNamed(context, '/noticias'); }),
                      
                      SizedBox( height: 15.0 ),

                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(15),
                        text: "Leyes y Normativas",
                        textColor: Color(0xFF6ca125),
                        background: Colors.white,
                        onPressed: () { Navigator.pushNamed(context, '/documentos'); }),
                      
                      SizedBox( height: 15.0 ),

                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(15),
                        text: "Quienes Somos",
                        textColor: Color(0xFF6ca125),
                        background: Colors.white,
                        onPressed: () { Navigator.pushNamed(context, '/nosotros'); })
                    ]
                  ),
                  delay: delayedAmount + 1000
                )
              ],
            ),
          )
        )
    );
  }
}
