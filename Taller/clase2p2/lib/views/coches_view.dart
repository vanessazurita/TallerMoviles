import 'package:flutter/material.dart';
import '../controller/coche_controller.dart';
import '../views/detalles_coches.dart'; 

class VistaCoches extends StatefulWidget {
  const VistaCoches({super.key});

  @override
  State<StatefulWidget> createState() => VistaCochesState();
}

class VistaCochesState extends State<VistaCoches> {
  final CocheController _controller = CocheController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo GridView"),
        backgroundColor: Colors.cyan,
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _controller.coches.length,
        itemBuilder: (context, index) {
          final item = _controller.coches[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCoche(
                    coche: item,
                  ),
                ),
              );
            },
            child: Card(
              color: Colors.cyan,
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    item.image,
                    const Divider(color: Colors.white),
                    Text(
                      item.modelo,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
