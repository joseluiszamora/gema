import 'package:flutter/material.dart';
import 'model/evento.dart';

class InformacionScreenPage extends StatefulWidget {
  InformacionScreenPage({Key key}) : super(key: key);

  @override
  _InformacionScreenPageState createState() => _InformacionScreenPageState();
}

class _InformacionScreenPageState extends State<InformacionScreenPage> with SingleTickerProviderStateMixin{
  // var carousel = [
  //   '1.jpg',
  //   'slide2.jpg',
  //   'slide3.jpg'
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Inicio'),
          backgroundColor: Color(0xFF6ca125),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false))),
        body: Column(
          children: <Widget>[
            SizedBox( height: 10.0 ),
            
            // CarouselSlider(
            //   height: 350.0,
            //   items: carousel.map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //           width: MediaQuery.of(context).size.width,
            //           margin: EdgeInsets.symmetric(horizontal: 5.0),
            //           child: Image.asset( 'assets/slider/$i' ));
            //       });
            //   }).toList()),
            
            // SizedBox( height: 5.0 ),

            Text('Talleres de Capacitación', style: TextStyle(fontWeight: FontWeight.bold)),

            SizedBox( height: 5.0 ),

            Container(
              height: MediaQuery.of(context).size.height-120,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: Evento.eventoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('${Evento.eventoList[index].titulo}', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle:Text('${Evento.eventoList[index].contenido}'),
                    leading: Column(children: <Widget>[
                      Text('${Evento.eventoList[index].fecha}', style: TextStyle(fontWeight: FontWeight.bold))
                    ])
                  );                
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ))
          ]
        )
      )
    );
  }
}
