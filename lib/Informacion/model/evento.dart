class Evento {
  int id;
  String fecha;
  String titulo;
  String contenido;
  
  Evento({
    this.id = 0,
    this.fecha = '',
    this.titulo = '',
    this.contenido = ''
  });

  static List<Evento> eventoList = <Evento>[
    Evento(
      id: 1,
      fecha: '08\nEnero',
      titulo: "Bancarización",
      contenido: "Lic. Juan Zapana, Grupo I y II"
    ),
    Evento(
      id: 1,
      fecha: '10\nEnero',
      titulo: "FINAL DE LA APLICACIÓN RETROACTIVA DE LA PRESCRIPCIÓN TRIBUTARIA",
      contenido: "Dr. Henry Pérez Oxa, Grupo I y II"
    ),
    Evento(
      id: 1,
      fecha: '13\nEnero',
      titulo: "CIERRE DE EE.FF. CON FINES TRIBUTARIOS",
      contenido: "Lic. Juan Zapana, 18:00 a 21:10"
    ),
    Evento(
      id: 1,
      fecha: '14\nEnero',
      titulo: "REGALÍAS MINERAS EN BOLIVIA",
      contenido: "Lic. Juan Carlos Maguiña, 18:00 a 21:10"
    ),
    Evento(
      id: 1,
      fecha: '15\nEnero',
      titulo: "TRIBUTACIÓN MINERA EN BOLIVIA",
      contenido: "Lic. Juan Carlos Maguiña, 18:00 a 21:10"
    ),
    Evento(
      id: 1,
      fecha: '17\nEnero',
      titulo: "RECONSTRUCCIÓN DE INVENTARIOS PARA LA IMPLEMENTACIÓN DEL S.F.E",
      contenido: "Lic. José Ticona, 19:45 a 21:10"
    ),
    Evento(
      id: 1,
      fecha: '20\nEnero',
      titulo: "PREPARACIÓN de INFORMACIÓN SIAT CONSTRUCTORAS",
      contenido: "Lic. Juan Zapana, 18:00 a 21:10"
    ),
    Evento(
      id: 1,
      fecha: '23-24\nEnero',
      titulo: "ADMINISTRACIÓN DE SUELDOS Y SALARIOS",
      contenido: "Lic. Lorenzo Limachi, Grupo I y II"
    ),
    Evento(
      id: 1,
      fecha: '26\nEnero',
      titulo: "SIGEP Y SICOES",
      contenido: "Lic. David Apaza, Grupo I y II"
    ),
    Evento(
      id: 1,
      fecha: '27\nEnero',
      titulo: "ELABORACIÓN DE NOTAS Y MEMORIALES PARA SOLICITAR PRESCRIPCIÓN",
      contenido: "Dr. Henry Pérez Oxa, Grupo I y II"
    )
  ];
}