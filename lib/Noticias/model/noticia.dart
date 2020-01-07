class Noticia {
  int id;
  String titulo;
  String descripcion;
  String imagen;
  
  Noticia({
    this.id = 0,
    this.titulo = '',
    this.descripcion = '',
    this.imagen = ''
  });

  static List<Noticia> noticiasList = <Noticia>[
    Noticia(
      id: 1,
      titulo: 'Dia del auditor Boliviano',
      descripcion: "Festejamos el dia del auditor boliviano...............",
      imagen: "assets/noticias/auditores.jpg"
    ),
    Noticia(
      id: 2,
      titulo: 'Dia del auditor Boliviano',
      descripcion: "Festejamos el dia del auditor boliviano...............",
      imagen: "assets/noticias/auditores.jpg"
    )
  ];

}