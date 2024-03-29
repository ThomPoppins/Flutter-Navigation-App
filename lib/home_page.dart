import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/galaxies_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const GalaxiesPage(),
            ),
          );
        },
        child: const Text("Galaxies"),
      ),
    );
  }
}
