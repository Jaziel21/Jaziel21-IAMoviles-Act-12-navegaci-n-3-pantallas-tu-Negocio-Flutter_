
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.menu_book, color: Color(0xFFF1C40F)),
            const SizedBox(width: 8),
            Text(
              'LIBRERÍA',
              style: GoogleFonts.oswald(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Handle cart button press
            },
          ),
        ],
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar libro...',
                  prefixIcon: const Icon(Icons.search, color: Color(0xFFF1C40F)),
                  filled: true,
                  fillColor: const Color(0xFF1E293B),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Categories Nav
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Inicio'),
                  _buildVerticalDivider(),
                  const Text('Categorías'),
                  _buildVerticalDivider(),
                  const Icon(Icons.shopping_cart, size: 20),
                ],
              ),
              const SizedBox(height: 30),

              // Libros Destacados
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xFFF1C40F), size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'LIBROS DESTACADOS',
                    style: GoogleFonts.oswald(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Book List
              _itemLibro(context, 'Libro 1', '\$250', 'imagenes/Captura.PNG'),
              _itemLibro(context, 'Libro 2', '\$180', 'imagenes/Captura1.PNG'),
              _itemLibro(context, 'Libro 3', '\$200', 'imagenes/Captura4.PNG'),
              _itemLibro(context, 'Libro 4', '\$150', 'imagenes/Captura5.PNG'),
              const SizedBox(height: 30),

              // Iniciar Sesion Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E293B),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {},
                child: const Text('Iniciar Sesión'),
              ),
              const SizedBox(height: 20),

              // Footer Nav
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/ofertas'),
                      child: const Text('Ofertas', style: TextStyle(color: Colors.white70))),
                  _buildVerticalDivider(),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Contacto', style: TextStyle(color: Colors.white70))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      height: 14,
      width: 1,
      color: Colors.white54,
      margin: const EdgeInsets.symmetric(horizontal: 10),
    );
  }

  Widget _itemLibro(
      BuildContext context, String titulo, String precio, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(imagePath,
              width: 40, height: 60, fit: BoxFit.cover),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text(precio,
                    style: const TextStyle(
                        fontSize: 14, color: Color(0xFFF1C40F))),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF1C40F).withOpacity(0.8),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            ),
            onPressed: () => Navigator.pushNamed(context, '/ofertas'),
            child: const Text('Ver'),
          ),
        ],
      ),
    );
  }
}
