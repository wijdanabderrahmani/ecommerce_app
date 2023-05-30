import 'package:flutter/material.dart';

class visual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual search'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fond d'image
          Image.asset(
            'assets/images/png/visual.png',
            fit: BoxFit.cover,
          ),
          // Contenu de la page
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(
                            0.5), // Couleur de fond blanche transparente
                        borderRadius:
                            BorderRadius.circular(8), // Bords arrondis
                      ),
                      child: Text(
                        'Search for an ouftit by taking a photo or uploading an image',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 8), // Espacement entre le texte et le bouton 1
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // Couleur de fond rouge
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Bords arrondis
                        ),
                      ),
                      child: Text('TAKE A PHOTO'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/searchbypic');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16), // Espacement entre les boutons
                Column(
                  children: [
                    SizedBox(
                        height: 8), // Espacement entre le texte et le bouton 2
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Fond transparent
                        side:
                            BorderSide(color: Colors.white), // Bordure blanche
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Bords arrondis
                        ),
                      ),
                      child: Text('UPLOAD AN IMAGE'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/crop');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
