import 'package:flutter/material.dart';

class NoticiasScreenPage extends StatefulWidget {
  NoticiasScreenPage({Key key}) : super(key: key);

  @override
  _NoticiasScreenPageState createState() => _NoticiasScreenPageState();
}

class _NoticiasScreenPageState extends State<NoticiasScreenPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          title: const Text('Noticias'),
          backgroundColor: Color(0xFF6ca125),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip);
            })
        ),
        body: Text('000000000')
      )
    );
  }
}
