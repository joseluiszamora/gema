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
      fecha: 'Hoy',
      titulo: "Que no se te olvide",
      contenido: "Hoy es el ultimo dia para la inscripción"
    ),
    Evento(
      id: 1,
      fecha: '20/01',
      titulo: "Aniversario de la carrera",
      contenido: "Ven con nosotros a celebrar......"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    ),
    Evento(
      id: 1,
      fecha: '30/01',
      titulo: "ejemplo.....",
      contenido: "Contenido ejemplo................"
    )
  ];
}