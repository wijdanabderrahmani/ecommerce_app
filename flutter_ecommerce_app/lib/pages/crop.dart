import 'package:flutter/material.dart';

class crop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop the item'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/png/crop.png'), // Chemin de l'image de fond
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 200,
              color: Colors.white,
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.2, // La photo prend 20% de l'espace
                  child: GestureDetector(
                    onTap: () {
                      // Action lorsque l'image est cliquée (redirection vers une autre page)
                      Navigator.pushNamed(context, '/visualsearch');
                    },
                    child: Image.asset(
                      'assets/images/png/search.png', // Chemin de l'image
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
