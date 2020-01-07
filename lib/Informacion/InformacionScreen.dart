import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'model/evento.dart';

class InformacionScreenPage extends StatefulWidget {
  InformacionScreenPage({Key key}) : super(key: key);

  @override
  _InformacionScreenPageState createState() => _InformacionScreenPageState();
}

class _InformacionScreenPageState extends State<InformacionScreenPage> with SingleTickerProviderStateMixin{
  var carousel = [
    '0_candidato.jpg', 
    '1_amistad.jpg', 
    '2_categoria_asociados.jpg', 
    '3_corrupcion.jpg', 
    '4_cuando.jpg', 
    //'5_derechos_de_asociados.jpg', 
    '6_desintoxicarse.jpg', 
    '7_frase_de_excelencia.jpg', 
    '8_innovacion.jpg', 
    '9_metas.jpg', 
    '10_que_me_ofrece.jpg' 
  ];

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
            CarouselSlider(
              height: 300.0,
              items: carousel.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset( 'assets/rrss/$i' ));
                  });
              }).toList()),
            
            SizedBox( height: 10.0 ),

            Container(
              height: 300.0,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: Evento.eventoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreen[500]),
                        child: Text('${Evento.eventoList[index].fecha}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                      
                      SizedBox(width: 10.0 ),

                      Column(
                        children: <Widget>[
                          Text('${Evento.eventoList[index].titulo}', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5.0 ),
                          Text('${Evento.eventoList[index].contenido}')])
                    ]
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
