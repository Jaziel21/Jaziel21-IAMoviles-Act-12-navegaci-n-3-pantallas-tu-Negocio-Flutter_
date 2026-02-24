
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OFERTAS AJMG')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text('– 20% EN NOVELAS', style: GoogleFonts.oswald(color: const Color(0xFFF1C40F), fontSize: 20)),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/carrito'),
            child: const _TarjetaOferta(
              titulo: 'DESEO OSCURO',
              precio: '\$250',
              color: Color(0xFFF1C40F),
              imagePath: 'imagenes/Captura2.PNG',
            ),
          ),
          const SizedBox(height: 20),
           GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/carrito'),
            child: const _TarjetaOferta(
              titulo: 'OTRA NOVELA',
              precio: '\$180',
              color: Color(0xFF3498DB),
              imagePath: 'imagenes/Captura9.PNG',
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/carrito'),
            child: const _TarjetaOferta(
              titulo: 'UN LIBRO MÁS',
              precio: '\$210',
              color: Color(0xFFE74C3C),
              imagePath: 'imagenes/Captura10.PNG',
            ),
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('← VOLVER AL INICIO', style: TextStyle(color: Colors.white54)),
          ),
        ],
      ),
    );
  }
}

class _TarjetaOferta extends StatelessWidget {
  final String titulo, precio, imagePath;
  final Color color;
  const _TarjetaOferta({required this.titulo, required this.precio, required this.color, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(12),
        border: Border(left: BorderSide(color: color, width: 4)),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 50, height: 70, fit: BoxFit.cover),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(precio, style: TextStyle(color: color)),
            ],
          ),
        ],
      ),
    );
  }
}
