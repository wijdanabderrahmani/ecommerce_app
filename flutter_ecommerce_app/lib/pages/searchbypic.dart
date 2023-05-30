import 'package:flutter/material.dart';

class searchbypic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search by taking a photo'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/png/searchpic.png'), // Chemin de l'image de fond
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
                  widthFactor: 0.5, // La photo prend 50% de l'espace
                  child: Image.asset(
                    'assets/images/png/search_bottom.png', // Chemin de l'image
                    fit: BoxFit.contain,
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
