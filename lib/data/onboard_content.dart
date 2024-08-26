class OnboardContent {
  String image;
  String text;
  String descripcion;

  OnboardContent(
      {required this.image, required this.text, required this.descripcion});
}

List<OnboardContent> contents = [
  OnboardContent(
    image: "assets/images/flutter.png",
    text: "¿Que es flutter?",
    descripcion:
        "Flutter es uno de los SDK (Software Development Kit) y viene de la mano de Google y su función principal es el desarrollo de aplicaciones nativas para diferentes formatos: web, móvil y escritorio. Las aplicaciones que pueden crearse a través de Flutter son en 2D, tanto para iOS como para Android, y cuentan con la opción de incluir todo tipo de funcionalidades diversas.",
  ),
  OnboardContent(
    image: "assets/images/dart_logo.png",
    text: "¿Que lenguaje utiliza flutter?",
    descripcion:
        "El lenguaje utilizado por este SDK, para trabajar en el código de los widgets y el framework, es Dart. Dart es un lenguaje open source creado por Google y fue el escogidopor las siguientes razones: tiempo de desarrollo más fluido y eficaz, basado en la compilación JIT (Just In Time), lo que permite una actualización inmediata de los cambios realizados; Compilación en lenguaje nativo en la subida a producción.",
  ),
  OnboardContent(
    image: "assets/images/pet_flutter.png",
    text: "¿Por que usar flutter?",
    descripcion:
        "Cuenta con un framework actual y de tendencia diseñado por capas y con la opción de personalizarlo si así se desea; contiene una amplia variedad de widgets de Cupertino (Apple) y Material Design (Google), temas muy heterogéneos y layouts para que se escoja el que mejor se adapte a tus necesidades; permite trabajar con una API para realizar pruebas y testeos unitarios y de integración con SDK de terceros, mediante el framework de pruebas; cualquier tipo de actualización en el sistema operativo del dispositivo móvil no paralizará sus funcionalidades, sino que se podrán acceder a ellas de manera inmediata; evita tener que desarrollar un código específico para cada tipo de sistema (iOs y Android).",
  ),
  OnboardContent(
    image: "assets/images/flutter_learn.png",
    text: "La comunidad de Flutter es amigable",
    descripcion:
        "Flutter cuenta con el apoyo de Google y de una activa comunidad de código abierto en Reddit, Discord, Slack, Stack Overflow y Gitter. Para facilitar el aprendizaje de Flutter, Google elaboró una amplia documentación y tutoriales en el sitio de Flutter. Para involucrar a los usuarios de Flutter, Google también organiza eventos globales, promueve proyectos de la comunidad y patrocina desafíos para desarrolladores.La comunidad de Flutter ha creado miles de paquetes de terceros y excelentes herramientas que agilizan la experiencia del desarrollador. Estas bibliotecas están disponibles en pub.dev.",
  ),
];

