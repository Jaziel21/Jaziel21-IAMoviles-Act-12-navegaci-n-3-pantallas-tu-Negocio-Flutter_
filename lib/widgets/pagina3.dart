import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CARRITO')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, color: Color(0xFF2ECC71), size: 80),
            const SizedBox(height: 20),
            Text('¡Compra realizada con éxito!', 
                 textAlign: TextAlign.center,
                 style: GoogleFonts.oswald(fontSize: 26, color: Colors.white)),
            const SizedBox(height: 40),
            const Divider(color: Colors.white10),
            ListTile(
              leading: Image.asset('imagenes/Captura3.PNG', width: 50, height: 70, fit: BoxFit.cover),
              title: const Text('Hábitos Atómicos'),
              subtitle: const Text('Total pagado: \$250'),
              trailing: const Icon(Icons.book, color: Color(0xFFF1C40F)),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF1C40F), foregroundColor: Colors.black),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
                child: const Text('VOLVER AL INICIO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
