import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
// Importamos las pantallas desde la carpeta widgets
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';

void main() {
  runApp(const MiAppNavegacion());
}

class MiAppNavegacion extends StatelessWidget {
  const MiAppNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Librería AJMG - Navegación',
      
      // Ruta inicial (Pantalla de Inicio)
      initialRoute: '/',
      
      // Definición de rutas nombradas
      routes: {
        '/': (context) => const PaginaUno(),
        '/ofertas': (context) => const PaginaDos(),
        '/carrito': (context) => const PaginaTres(),
      },

      // Configuración de Tema Global (Exótico)
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFF1C40F),
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF1E293B),
          centerTitle: true,
          elevation: 10,
          titleTextStyle: GoogleFonts.oswald(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}