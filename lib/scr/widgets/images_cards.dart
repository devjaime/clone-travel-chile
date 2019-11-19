import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';

import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
 List<Place> places = [
  Place(place: 'Valle Nevado', image: 'vallenevado.jpg', days: 7),
   Place(place: 'Rio Trancura', image: 'riotrancura.jpg', days: 12),
   Place(place: 'Patagonia Chilena', image: 'patagoniachilena.jpg', days: 3),
   Place(place: 'Estrecho de magallanes', image: 'estrechomagallanes.jpg', days: 7),
   Place(place: 'Carretera Austral', image: 'carreteraaustral.jpg', days: 12),
   Place(place: 'Valle de la luna', image: 'valledelaluna.jpg', days: 3),

 ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                days: places[index].days,
                picture: places[index].image,
              );
            }));
  }
}


