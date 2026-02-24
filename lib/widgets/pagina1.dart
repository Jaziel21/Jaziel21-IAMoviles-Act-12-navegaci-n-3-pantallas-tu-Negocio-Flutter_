
import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Icon(Icons.menu_book, color: Color(0xFFF1C40F)),
            const SizedBox(width: 10),
            const Text('LIBRERÍA AJMG'),
            const SizedBox(width: 10),
            Text(
              'Alfredo Martinez 6 I',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar libro...',
                prefixIcon: const Icon(Icons.search, color: Color(0xFFF1C40F)),
                filled: true,
                fillColor: const Color(0xFF1E293B),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 25),
            _itemLibro(context, 'Libro 1', '\$250', 'imagenes/Captura.PNG'),
            _itemLibro(context, 'Libro 2', '\$180', 'imagenes/Captura1.PNG'),
            _itemLibro(context, 'Libro 3', '\$200', 'imagenes/Captura4.PNG'),
            _itemLibro(context, 'Libro 4', '\$150', 'imagenes/Captura5.PNG'),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF1C40F),
                foregroundColor: Colors.black,
              ),
              onPressed: () => Navigator.pushNamed(context, '/ofertas'),
              child: const Text('IR A OFERTAS'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemLibro(BuildContext context, String titulo, String precio, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: const Color(0xFF1E293B), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(imagePath, width: 50, height: 70, fit: BoxFit.cover),
          const SizedBox(width: 15),
          Expanded(child: Text(titulo, style: const TextStyle(fontSize: 18))),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/ofertas'),
            child: const Text('Ver'),
          ),
        ],
      ),
    );
  }
}
