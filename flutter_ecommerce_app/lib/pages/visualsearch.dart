import 'package:flutter/material.dart';

class visualsearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/png/searchbutton.png', // Chemin de l'image
              width: 200, // Largeur de l'image
              height: 200, // Hauteur de l'image
            ),
            SizedBox(height: 16), // Espacement entre l'image et le texte
            Text(
              'Finding similar results...',
              style: TextStyle(
                fontSize: 36, // Taille de police
                fontWeight: FontWeight.bold, // Gras
                color: Colors.black, // Couleur noire
              ),
            ),
          ],
        ),
      ),
    );
  }
}
