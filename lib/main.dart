import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'Inicio/InicioHomeScreen.dart';
import 'Informacion/InformacionScreen.dart';
import 'Noticias/NoticiasScreen.dart';
import 'Documentos/DocumentosScreen.dart';
import 'Nosotros/NosotrosScreen.dart';

import 'Documentos/PdfViewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
        Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.android,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InicioHomeScreenPage(),
        '/informacion': (context) => InformacionScreenPage(),
        '/noticias': (context) => NoticiasScreenPage(),
        '/documentos': (context) => DocumentosScreenPage(),
        '/nosotros': (context) => NosotrosScreenPage(),
      },
      //home: PdfViewerPage(),
    );
  }
}
