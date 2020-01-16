import 'package:flutter/material.dart';
import 'model/noticia.dart';

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
          automaticallyImplyLeading: true,
          title: Text('Noticias'),
          backgroundColor: Color(0xFF6ca125),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false))),
        body: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Container(
              height: 600.0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: Noticia.noticiasList.length,
                itemBuilder: (BuildContext context, int index) {
                  return makeCard(Noticia.noticiasList[index]);
                }))
          ])
      )
    );
  }

  Widget makeCard(Noticia noticia) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        child: makeListTile(noticia)));
  }

  Widget makeListTile(Noticia noticia) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10.0),
        Text(
          noticia.titulo,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0)),
        SizedBox(height: 10.0),
        Image.asset(noticia.imagen),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Text(noticia.descripcion),
        ),
        SizedBox(height: 10.0)
      ],
    );
  }
}
