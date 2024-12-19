import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../models/coche.dart';

class DetallesCoche extends StatelessWidget {
  final Coche coche;
  const DetallesCoche({super.key, required this.coche});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coche.modelo),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            coche.image,
            const SizedBox(height: 20),
            Text(
              'Marca: ${coche.marca}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Modelo: ${coche.modelo}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
