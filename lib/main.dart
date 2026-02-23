import 'package:flutter/material.dart';
//Direccionar páginas
import 'package:myapp/widgets/PaginaUno.dart';
import 'package:myapp/widgets/PaginaDos.dart';
import 'package:myapp/widgets/PaginaTres.dart';

void main() {
  runApp(const MiAppParisina());
}

class MiAppParisina extends StatelessWidget {
  const MiAppParisina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Parisina',
      // Configuración de Estilos Globales
      theme: ThemeData(
        // Color de texto predeterminado en el body
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontSize: 18),
        ),
        // Estilo global para todos los botones elevados
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Fondo negro
            foregroundColor: Colors.white, // Texto blanco
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaUno(),
        '/segunda': (context) => const PaginaDos(),
        '/tercera': (context) => const PaginaTres(),
      },
    );
  }
}