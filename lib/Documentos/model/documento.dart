class Documento {
  int id;
  String titulo;
  String descripcion;
  String enlace;
  
  Documento({
    this.id = 0,
    this.titulo = '',
    this.descripcion = '',
    this.enlace = ''
  });

  static List<Documento> documentosEticaList = <Documento>[
    Documento(
      id: 1,
      titulo: 'Codigo etica CAUB',
      descripcion: "Codigo etica CAUB",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    ),
    Documento(
      id: 2,
      titulo: 'Codigo Colegio de Contadores de Bolivia',
      descripcion: "Codigo Colegio de Contadores de Bolivia",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    )
  ];

  static List<Documento> documentosGubernamentalList = <Documento>[
    Documento(
      id: 1,
      titulo: 'Código de ética del Auditor Gubernamental',
      descripcion: "Código de ética del Auditor Gubernamental",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    ),Documento(
      id: 2,
      titulo: 'Guia para Implanatación del Control Interno',
      descripcion: "Guia para Implanatación del Control Interno",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    ),
    Documento(
      id: 3,
      titulo: 'Sistema de Contabilidad Integrada',
      descripcion: "Sistema de contabilidad integrada, normas basicas",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    )
  ];

  static List<Documento> impuestosList = <Documento>[
    Documento(
      id: 1,
      titulo: 'Retenciones',
      descripcion: "Retenciones",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    ),Documento(
      id: 2,
      titulo: 'Impuestos Tomo 1',
      descripcion: "Impuestos Tomo 1",
      enlace: "assets/documentos/codigo_de_etica_del_auditor_gubernamental.pdf"
    )
  ];
}