import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class NosotrosScreenPage extends StatefulWidget {
  NosotrosScreenPage({Key key}) : super(key: key);

  @override
  _NosotrosScreenPageState createState() => _NosotrosScreenPageState();
}

class _NosotrosScreenPageState extends State<NosotrosScreenPage> with SingleTickerProviderStateMixin{
  var carousel = [
    '1.jpg',
    'slide2.jpg',
    'slide3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Quienes Somos'),
          backgroundColor: Color(0xFF6ca125),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false))),
        body: Column(
          children: <Widget>[
            CarouselSlider(
              height: 350.0,
              items: carousel.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset( 'assets/slider/$i' ));
                  });
              }).toList()),
            
            // SizedBox( height: 5.0 ),

            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            //   child: Image.asset('assets/images/logo3.jpg', width: 300.0, alignment: Alignment.topCenter),
            // ),
            
            SizedBox(height: 10.0),
            
            Container(
              height: MediaQuery.of(context).size.height-450,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _propuesta(),
                ),
              ),
            )
          ],
        )
      )
    );
  }

  List<Widget> _propuesta() => <Widget>[
    Text('Misión', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 10.0),
    Text('Agrupar y representar a los asociados ante la sociedad y autoridades, generando servicios de valor y calidad que permitan el desarrollo de los Auditores y Contadores Públicos Autorizados, p ara fortalecerlos en su crecimiento personal y profesional, dentro de los más altos estándares éticos, en beneficio de la sociedad.'),
    SizedBox(height: 5.0),
    Text('Contando con un equipo de trabajo competente y cumpliendo con los principios éticos y de responsabilidad social.'),
    SizedBox(height: 10.0),
    Text('Visión', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 10.0),
    Text('Ser la comunidad de profesionales Auditores y Contadores Públicos Autorizados más prestigiosa en Bolivia, para contribuir y brindar servicios de valor y calidad para el desarrollo de la competitividad profesional dentro la sociedad.'),
    SizedBox(height: 10.0),
    Text('Quienes Somos', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 10.0),
    Text('Somos un frente de profesionales jóvenes que tienen los siguientes principios y valores para su actuar:'),
    SizedBox(height: 10.0),
    Text('Verdad', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('La esencia del trabajo del Auditor y/o Contador Público Autorizado radica en la verdad. Es su razón de ser. La verdad, aun en la más difícil de las situaciones, es liberadora. La verdad hace la vida.'),
    SizedBox(height: 5.0),
    Text('Debemos mantener, ante todo, la verdad: la verdad en nuestras acciones, la verdad en nuestro trabajo, la verdad en la información que presentamos, porque la verdad es el vínculo que nos acerca a nuestros asociados, a nuestros clientes, a nuestros proveedores, a nuestro personal y a la sociedad misma.'),
    SizedBox(height: 10.0),
    Text('Integridad', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Integridad es probidad, es rectitud, es honestidad y es respeto. Debemos ser íntegros y leales para obtener de la sociedad la confianza y la credibilidad, indispensables para el sustento de las relaciones personales, profesionales y comerciales. La integridad va de la mano con la ética personal y profesional.'),
    SizedBox(height: 5.0),
    Text('La integridad es la congruencia de nuestros valores con las prácticas de nuestra institución colegiada.'),
    SizedBox(height: 10.0),
    Text('Responsabilidad', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Ser responsables es tener la capacidad de reconocer el alcance de nuestras acciones y de sus consecuencias, y de responder por ellas.'),
    SizedBox(height: 5.0),
    Text('En nuestra profesión, la responsabilidad es factor sustantivo para alcanzar el éxito. Debemos ser responsables y disciplinados en todas las acciones que desarrolla nuestra institución y en el impacto que pueden causar en las disciplinas que son inherentes a nuestra profesión, no sólo a nuestros asociados, clientes, proveedores y personal, sino a toda nuestra sociedad.'),
    SizedBox(height: 10.0),
    Text('Compromiso', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('El compromiso comprende el deber de mantener una actitud de apertura para escuchar las críticas y sugerencias recibidas de nuestros asociados, clientes, proveedores, personal y comunidad en general, y de actuar en consecuencia.'),
    SizedBox(height: 5.0),
    Text('Comprometerse es obligarse, con libertad, a actuar, a responder, a cooperar, a ser responsable.'),
    SizedBox(height: 5.0),
    Text('Nuestro compromiso comprende también una actitud de diálogo y de inclusión, aun para quienes no comparten nuestras ideas y nuestros ideales, porque conformamos un grupo de aprendizaje, deseoso de crear y de innovar.'),
    SizedBox(height: 5.0),
    Text('Nuestro compromiso es, en resumen, dar lo mejor de nosotros mismos a todos aquellos que se relacionan con nuestra institución.'),
    SizedBox(height: 10.0),
    Text('Lealtad a las personas:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Ofrecemos un ambiente de respeto, calidez y equidad.'),
    SizedBox(height: 10.0),
    Text('Atención de excelencia:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Trabajamos en equipo con un enfoque de servicio de valor, tomando en cuenta los detalles.'),
    SizedBox(height: 10.0),
    Text('Actuación íntegra y honesta:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Nos comprometemos a ser congruentes entre lo que decimos y hacemos, predicando con el ejemplo.'),
    SizedBox(height: 10.0),
    Text('Fortalecimiento del CAULP:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Fomentamos la ética, el conocimiento, la innovación y el liderazgo.'),
    SizedBox(height: 10.0),
    Text('Permanencia en el tiempo:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Somos sensibles al cambio y respondemos en forma organizada cumpliendo nuestra misión día a día.'),
    SizedBox(height: 10.0),
    Text('Contamos con Política de Calidad para:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Contar con un equipo de trabajo enfocado a la agrupación y desarrollo de los Auditores y Contadores Públicos Autorizados, para representar y fortalecer a la profesión, mediante servicios de calidad y la mejora continua, superando sus expectativas y necesidades; Acorde a lo que ofrecemos (Plan de Trabajo).'),
    SizedBox(height: 10.0),
    Text('Objetivos de Calidad:', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
    Text('Desarrollar servicios de valor que coadyuven a la competitividad de los profesionales registrados al CAULP. Consolidar el crecimiento sostenido del registro al Colegio y su sustentabilidad.'),
    SizedBox(height: 10.0),
    Text('Que Ofrecemos', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 10.0),
    Text('Los integrantes del Frente GEMA, queremos compartir las propuestas para contribuir con el fortalecimiento de nuestra institución colegiada, detalladas a continuación para poder abordar una transformación de tal magnitud que nos colocara en un sitial preferencial dentro nuestra sociedad y contribuirá con el desarrollo de nuestro país.'),
    SizedBox(height: 5.0),
    Text('En una era de transformación e innovación, apostamos por el desarrollo profesional y personal de nuestros asociados que serán los líderes del futuro. Para lograr estos objetivos, nuestras propuestas son:'),
    
    SizedBox(height: 10.0),
    Text('Fortalecimiento Institucional', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('1. Efectuar gestiones ante el Servicio de Impuestos Nacionales para reivindicar la vigencia plena y obligatoria de la Solvencia Profesional.'),
    SizedBox(height: 10.0),
    Text('2. Gestionar la participación activa del Consejo Técnico ante las instancias gubernamentales como; Ministerio de Economía y Finanzas Publicas, Contraloría General del Estado, etc.'),
    SizedBox(height: 5.0),
    Text('3. Difundir el Estatuto Orgánico y Reglamento del CAULP edición Mayo 1996 para conocimiento de los Asociados.'),
    SizedBox(height: 5.0),
    Text('4. Convocar a Asamblea Extraordinaria para la modificación del Estatuto Orgánico y Reglamento del CAULP vigente.'),
    SizedBox(height: 5.0),
    Text('5. Poner en consideración de la Asamblea Extraordinaria sobre el reconocimiento y procedimiento sobre las categorías de Asociados (Fundadores, Honorarios, Activos y Eventuales).'),
    SizedBox(height: 10.0),
    Text('6. Actualización de información del registro de los Asociados, que determinara con certeza absoluta y real el cambio de dirección, trabajo actual, etc.'),
    SizedBox(height: 5.0),
    Text('7. Incentivo a Asociados con cuotas al día, cuotas pagadas por adelantado, cuotas de asociados fundadores.'),
    SizedBox(height: 5.0),
    Text('8. Análisis y determinación de Cuotas pendientes de pago.'),
    SizedBox(height: 5.0),
    Text('9. Incentivo a la Inscripción de nuevos asociados al CAULP.'),
    SizedBox(height: 5.0),
    Text('10. Biblioteca especializada virtual para consulta de los asociados.'),
    SizedBox(height: 5.0),
    Text('11. Compra de Terrenos en Achocalla y Rio Abajo para la construcción de Complejos Deportivos EL AUDITOR para recreación de los colegiados y sus familias.'),
    SizedBox(height: 5.0),
    Text('12. Compra de inmueble en la ciudad de El Alto para la constitución de la Filial El Alto y Provincias.'),
    SizedBox(height: 5.0),
    Text('13. Apertura de Oficinas de atención Profesional a la sociedad paceña, que este conformada por miembros del Consejo Técnico Departamental de Auditoria y Contabilidad y Asociados voluntarios como parte de la Responsabilidad Social del CAULP.'),
    SizedBox(height: 5.0),
    Text('14. Seguro de Muerte y Gastos Funerarios para los asociados.'),
    
    SizedBox(height: 10.0),
    Text('Ética con Valores y Transparencia', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('1. Actuar ético de todos los miembros del Directorio del Frente gEMA, en cumplimiento a los Estatutos y Reglamentos vigentes y modificados del CAULP.'),
    SizedBox(height: 5.0),
    Text('2. Reglamentar la Rendición de Ingresos percibidos por concepto de cobranzas de cuotas y otros conceptos.'),
    SizedBox(height: 5.0),
    Text('3. Reglamentar la Rendición de Cuentas por presupuestos aprobados por el Directorio.'),
    SizedBox(height: 5.0),
    Text('4. Apoyo para la Defensa Profesional de los Asociados, previa valoración ética y legal de cada caso.'),
    SizedBox(height: 5.0),
    Text('5. Presentación semestral del Informe Económico, Financiero y Laboral a los Asociados en Asamblea Ordinaria.'),
    SizedBox(height: 5.0),
    Text('6. Publicación del Informe Económico Financiero y Laboral semestralmente en redes sociales.'),
    
    SizedBox(height: 10.0),
    Text('Capacitación e Investigación', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Con el objetivo del perfeccionamiento y actualización profesional se efectuaran capacitaciones acorde a las exigencias del mercado laboral con cargas horarias de 40 a 120 horas que serán debidamente certificadas. Para tal efecto se organizaran calendarios mensuales con profesionales bolivianos y extranjeros de reconocido nivel en temas especializados que son exigidos por los asociados.'),
    SizedBox(height: 5.0),
    Text('Capacitaciones simultaneas para asociados que radican en la ciudad de La Paz y El Alto.'),
    SizedBox(height: 5.0),
    Text('Capacitaciones en línea en tiempo real conjuntamente la presencial que tendrá el mismo valor de Certificación y Acreditación.'),
    SizedBox(height: 5.0),
    Text('A los asociados que cumplan las horas de capacitación continua, se les emitirá el Certificado de Acreditación por capacitación que tendrá valor curricular.'),
    SizedBox(height: 5.0),
    Text('Certificaciones en NIAs y NIIF de organismos internacionales como ACCA y IASB que beneficie a mayor cantidad de asociados.'),
    SizedBox(height: 5.0),
    Text('Asignar el Presupuesto de investigación profesional para promover y destacar a los mejores asociados del CAULP'),
    SizedBox(height: 5.0),
    Text('Premiar la investigación en temas de Auditoria y Contabilidad de los asociados.'),
    SizedBox(height: 5.0),
    Text('Promocionar la mejor investigación en temas de Auditoria y Contabilidad.'),
    SizedBox(height: 5.0),
    Text('Promover Foros y Mesas de discusión sobre temas coyunturales que atingen a la profesión.'),
    SizedBox(height: 5.0),
    Text('Promover Ferias de apoyo al talento intelectual y emprendimiento.'),
    SizedBox(height: 5.0),
    Text('Orientar a bachilleres sobre las ventajas y desventajas de la elección de la Carrera Profesional de Auditoria.'),
    SizedBox(height: 5.0),
    Text('Ofrecer beneficios a estudiantes de la Carrera de Contaduría Pública de Universidades públicas y privadas para su participación en Capacitaciones de acuerdo a convenio.'),
    
    SizedBox(height: 10.0),
    Text('Tecnología e Innovación', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Los asociados podrán identificar, disminuir o evitar riesgos en sus actividades profesionales como Auditores, a través de la adopción de la tecnología que esté acorde a las exigencias del mercado. Deben ver el manejo del riesgo digital como una fuente de ventaja competitiva.'),
    SizedBox(height: 5.0),
    Text('Digitalización de los Files de los Asociados, para una identificación oportuna de la sociedad de los profesionales registrados al CAULP.'),
    SizedBox(height: 5.0),
    Text('Pago de cuotas y Capacitaciones con depósitos y/o transferencias Bancarias.'),
    SizedBox(height: 5.0),
    Text('Videoteca, que ofrecerá en línea, los mejores cursos, seminarios, talleres para ampliar el conocimiento de los asociados.'),
    SizedBox(height: 5.0),
    Text('Plataforma digital (App) exclusiva para asociados al CAULP, que facilitara conocer sobre sus cuotas pendientes de pagos, eventos de capacitación e información sobre normativas y leyes, eventos deportivos, culturales y otros, para lo cual se les asignara un pin.'),
    SizedBox(height: 5.0),
    Text('Proporcionar a los Asociados Sistemas Electrónicos que sean de necesidad para el ejercicio profesional como; Sistemas de Facturación Electrónica, Sistemas Office y otros.'),
    
    SizedBox(height: 10.0),
    Text('Salud y Bienestar del Asociado', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Convenios con el Colegio Médico de La Paz y Colegio de Odontólogos de La Paz para la atención en salud de los asociados que no cuenten con Seguro.'),
    SizedBox(height: 5.0),
    Text('Destinar ambiente para guardería para hijos de asociadas al CAULP que se capaciten.'),
    SizedBox(height: 5.0),
    Text('Incentivar la participación de los asociados en todas las ramas deportivas inicialmente a nivel departamental, para seleccionar a los asociados más destacados para que representen al CAULP en torneos inter profesionales, departamentales y nacionales.'),
    SizedBox(height: 5.0),
    Text('Propiciar actividades como; Clases de Zumba, Meditación, Carreras Deportivas, Torneos de ajedrez, Torneos de cacho, etc.'),
    SizedBox(height: 5.0),
    Text('Promover actividades culturales dentro de las instalaciones del CAULP.'),
    SizedBox(height: 5.0),
    Text('Mejora del canaston de fin de año que beneficie a asociados y sus familias.'),
    SizedBox(height: 5.0),
    Text('Reconocimiento y sorteo de Premios a los Asociados más activos del año.'),
    
    SizedBox(height: 10.0),
    Text('Responsabilidad Social:', style: TextStyle(color: Color(0xFF6ca125), fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Como institución colegiada promoveremos la responsabilidad social de la institución y los asociados al CAULP, con diversas actividades en pro de la sociedad, como: Ferias de Promoción del CAULP como parte del Aniversario de Fundación, Apoyo a Asociados con problemas de Salud Terminal.'),
    

    SizedBox(height: 10.0),
    Text('Directorio', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
    SizedBox(height: 5.0),
    Text('Presidente', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. Aud. Angel Quisbert Blanco'),

    SizedBox(height: 10.0),
    Text('Vicepresidente', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. CPA Katty Reyna Flores Jimenez'),

    SizedBox(height: 10.0),
    Text('Secretaria General', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. Aud. Sugar Carlos Flores Condori'),
    
    SizedBox(height: 10.0),
    Text('Secretaria de Finanzas', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. CPA Santos Felipe Cornejo Apuri'),

    SizedBox(height: 10.0),
    Text('Secretaria de Actas', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. CPA Angela Lizeth Daza Tapia'),

    SizedBox(height: 10.0),
    Text('Secretaria de Capacitación', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. Aud. Oscar Álvaro Mamani Cabrera'),

    SizedBox(height: 10.0),
    Text('Secretaria de Prensa y Defensa Profesional', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. Aud. Hugo Madeny Lopez'),

    SizedBox(height: 10.0),
    Text('Vocal I', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. CPA. Miguel Angel Quisbert Antonio'),

    SizedBox(height: 10.0),
    Text('Vocal II', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. CPA. Luis Enrique Cosme Colque'),

    SizedBox(height: 10.0),
    Text('Vocal III', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic.CPA. Carla Andrea de la Barra Jarandilla'),

    SizedBox(height: 10.0),
    Text('Vocal IV', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic. CPA Juan Carlos León Pérez'),

    SizedBox(height: 10.0),
    Text('TRIBUNAL DE HONOR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
    SizedBox(height: 5.0),
    Text('Presidente', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic.Aud. Enrique Hinojosa'),

    SizedBox(height: 10.0),
    Text('Vocal Titular', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic.CPA Tatiana Virginia Pilco Callisaya'),

    SizedBox(height: 10.0),
    Text('Vocal Suplente', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 5.0),
    Text('Lic.Aud. Pedro Hernán Serrano Villafuerte')
  ];
}
