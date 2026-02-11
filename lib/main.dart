import 'package:flutter/material.dart';

void main() => runApp(const Apppastillero());

class Apppastillero extends StatelessWidget {
  const Apppastillero({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Horariosreloj());
  }
}

class Horariosreloj extends StatelessWidget {
  const Horariosreloj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'reloj pastillero el joel',
          style: TextStyle(color: Color.fromARGB(255, 139, 133, 235)),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.camera_alt,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        actions: const [
          Icon(Icons.access_time, color: Color.fromARGB(255, 8, 7, 7)),
          SizedBox(width: 10), // Espacio opcional entre iconos
          Icon(Icons.medication, color: Color.fromARGB(255, 14, 12, 12)),
          SizedBox(width: 15), // Margen derecho
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: TarjetasColumn(),
      ),
    );
  }
}

class TarjetasColumn extends StatelessWidget {
  const TarjetasColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Llamamos a nuestra función para crear 3 tarjetas
        crearTarjeta('usuarios', 'pedro', 'https://raw.githubusercontent.com/joelDB7/imagenes-para-flutter-6j/refs/heads/main/empleados1.png'),
        crearTarjeta('usuarios', 'juan', 'https://raw.githubusercontent.com/joelDB7/imagenes-para-flutter-6j/refs/heads/main/empleados2.png'),
        crearTarjeta('usuarios', 'jesus', 'https://raw.githubusercontent.com/joelDB7/imagenes-para-flutter-6j/refs/heads/main/empleados3.png'),
      ],
    );
  }

  // Función reutilizable para no repetir código (Nivel Principiante)
  Widget crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: const Color.fromARGB(255, 167, 168, 255), // Color de fondo morado
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Color.fromARGB(255, 252, 47, 47),
        ),
      ),
    );
  }
}
