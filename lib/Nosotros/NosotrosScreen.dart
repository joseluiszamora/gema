import 'package:flutter/material.dart';

class NosotrosScreenPage extends StatefulWidget {
  NosotrosScreenPage({Key key}) : super(key: key);

  @override
  _NosotrosScreenPageState createState() => _NosotrosScreenPageState();
}

class _NosotrosScreenPageState extends State<NosotrosScreenPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Nosotros'),
          backgroundColor: Color(0xFF6ca125),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false))),
        body: Column(
          children: <Widget>[
            Image.asset('assets/images/logo_2.png', width: 300.0, alignment: Alignment.topCenter),
            SizedBox(height: 100.0),
            Text('El Frente gema es...........'),
            SizedBox(height: 100.0),
            Text('El Frente gema es...........')
          ],
        )
      )
    );
  }
}
