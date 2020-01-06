import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:avatar_glow/avatar_glow.dart';

class InformacionScreenPage extends StatefulWidget {
  InformacionScreenPage({Key key}) : super(key: key);

  @override
  _InformacionScreenPageState createState() => _InformacionScreenPageState();
}

class _InformacionScreenPageState extends State<InformacionScreenPage> with SingleTickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: Color(0xFF6ca125),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: Text('data')
      )
    );
  }
}
