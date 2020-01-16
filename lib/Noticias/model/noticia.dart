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
    // Noticia(
    //   id: 1,
    //   titulo: 'Dia del auditor Boliviano',
    //   descripcion: "Festejamos el dia del auditor boliviano...............",
    //   imagen: "assets/noticias/auditores.jpg"
    // ),
    Noticia(
      id: 2,
      titulo: '14 de Agosto - Dia del auditor Boliviano',
      descripcion: "A todos los Auditor@s y/o contador@s públicos autorizados de la ciudad maravillosa de Bolivia que cada mañana acuden a sus fuentes laborales y hacen un país cada dia mejor.",
      imagen: "assets/noticias/noticia2.jpg"
    )
  ];
}