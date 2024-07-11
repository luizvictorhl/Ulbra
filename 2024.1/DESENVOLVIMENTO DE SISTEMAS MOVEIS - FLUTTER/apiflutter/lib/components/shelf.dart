
import 'package:flutter/material.dart';

import '../main.dart';
import '../models/character.dart';
import 'details.dart';

class Shelf extends StatefulWidget {
  Shelf({super.key, required this.caracters});

  late List<Character> caracters;

  @override
  ShelfState createState() => ShelfState();
}

class ShelfState extends State<Shelf> {

  openDetails(int index){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CharacterDetailScreen(
          character: widget.caracters[index],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
  return GridView.builder(
    gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 20,
    ),
    itemCount: widget.caracters.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          openDetails(index);
        },
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                widget.caracters[index].image,
                height: 140,
                width: 140,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 8),
              Text(
                widget.caracters[index].name,
                style: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    },
  );

  }
}
