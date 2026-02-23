import 'package:flutter/material.dart';

// --- PÁGINA 1 ---
class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio Parisina"),
        backgroundColor: const Color(0xFF8B0000), // Rojo Oscuro
        foregroundColor: Colors.white,            // Texto Blanco
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Pagina inicial"), // Texto será negro por el tema
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              child: const Text("Ir a la Segunda Página"),
            ),
          ],
        ),
      ),
    );
  }
}