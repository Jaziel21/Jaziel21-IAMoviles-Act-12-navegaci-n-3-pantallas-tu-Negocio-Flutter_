
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// --------- Hover Effect Widget Definition ---------
class HoverableWidget extends StatefulWidget {
  final Widget child;
  const HoverableWidget({Key? key, required this.child}) : super(key: key);

  @override
  _HoverableWidgetState createState() => _HoverableWidgetState();
}

class _HoverableWidgetState extends State<HoverableWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: _isHovered
            ? (Matrix4.identity()..scale(1.05))
            : Matrix4.identity(),
        transformAlignment: Alignment.center,
        child: widget.child,
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
// --------------------------------------------------

class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: HoverableWidget(
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFF1C40F)),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          'CARRITO', // Title updated
          style: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildOfferSection(
                title: 'OFERTAS ESPECIALES',
                subtitle: '– 20% en novelas solo hoy',
                color: const Color(0xFFF1C40F),
              ),
              const SizedBox(height: 20),
              HoverableWidget(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/carrito'),
                  child: _buildBookCard(
                    category: 'NOVELA ROMÁNTICA',
                    title: 'DESEO OSCURO',
                    price: '\$250.00',
                    imagePath: 'imagenes/Captura2.PNG',
                    borderColor: const Color(0xFFF1C40F),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              _buildOfferSection(
                title: 'OFERTA EDUCATIVA',
                subtitle: 'Libros de idiomas y gramática',
                color: const Color(0xFF2ECC71),
              ),
              const SizedBox(height: 20),
              HoverableWidget(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/carrito'),
                  child: _buildBookCard(
                    category: 'EDUCACIÓN',
                    title: 'GRAMÁTICA INGLESA',
                    price: 'Desde \$100.00',
                    imagePath: 'imagenes/Captura5.PNG', // Placeholder, update if needed
                    borderColor: const Color(0xFF2ECC71),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: HoverableWidget(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      '← VOLVER AL INICIO',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOfferSection({required String title, required String subtitle, required Color color}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 4,
          height: 40,
          color: color,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.oswald(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBookCard({
    required String category,
    required String title,
    required String price,
    required String imagePath,
    required Color borderColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(12),
        border: Border(
          left: BorderSide(color: borderColor, width: 6),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: borderColor,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                title,
                style: GoogleFonts.oswald(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
