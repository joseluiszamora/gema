import 'package:flutter/material.dart';
import 'model/documento.dart';

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

class DocumentosScreenPage extends StatefulWidget {
  DocumentosScreenPage({Key key}) : super(key: key);

  @override
  _DocumentosScreenPageState createState() => _DocumentosScreenPageState();
}

class _DocumentosScreenPageState extends State<DocumentosScreenPage> with SingleTickerProviderStateMixin{
  String pathPDF = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Documentos'),
              automaticallyImplyLeading: true,
              backgroundColor: Color(0xFF6ca125),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false)),
              bottom: TabBar(
                tabs: [
                  Tab(text: 'Etica'),
                  Tab(text: 'Impuestos'),
                  Tab(text: 'Gubernamental')]),
            ),
            body: TabBarView(
              children: [
                Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text('Documentos de Etica',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
                    SizedBox(height: 10.0),
                    makeLista(Documento.documentosEticaList)
                  ]),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text('Documentos de Impuestos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
                    SizedBox(height: 10.0),
                    makeLista(Documento.impuestosList)
                  ]),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text('Documentos Gubernamentales',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
                    SizedBox(height: 10.0),
                    makeLista(Documento.documentosGubernamentalList)
                  ]),
              ],
            ),
          ),
        )
      )
    );
  }

  Widget makeLista(List<Documento> lista) {
    return Container(
      height: 500.0,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lista[index]);
        }));
  }
  
  Widget makeCard(Documento documento) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.lightGreen[300]),
        child: makeListTile(documento)));
  }

  Widget makeListTile(Documento documento) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
          border: new Border(
            right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.picture_as_pdf, color: Colors.white)),
      title: Text(
        documento.titulo,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      subtitle: Text(documento.descripcion, style: TextStyle(color: Colors.white)),
      trailing: Container(
        width: 35.0,
        child: RaisedButton(
          color: Colors.lightGreen[300],
          elevation: 0,
          child: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onPressed: () {
            preparePdf(documento.enlace).then((path) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PDFScreen(path, documento.titulo)));
            });}
        )
      )
    );
  }

  // prepare pdf doc from assets
  Future<String> preparePdf(String _path) async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_path);
    final Uint8List list = bytes.buffer.asUint8List();
    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_path';
    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  // prepare pdf from url
  Future<File> prepareFileOfPdfUrl() async {
    final url = "http://africau.edu/images/default/sample.pdf";
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }
}

// PDF Reader
class PDFScreen extends StatelessWidget {
    String pathPDF = "";
    String namePDF = "";
    PDFScreen(this.pathPDF, this.namePDF);

    @override
    Widget build(BuildContext context) {
      return PDFViewerScaffold(
          appBar: AppBar(
            title: Text("$namePDF"),
            backgroundColor: Color(0xFF6ca125)),
          path: pathPDF);
    }
  }