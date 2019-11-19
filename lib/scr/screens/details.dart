import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';

class Details extends StatelessWidget {
  final Place place;


  Details(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),),
    child: Image.asset('images/${place.image}', height: 400, width: double.infinity, fit: BoxFit.fill,),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today, color: Colors.grey, size: 20,),
                      SizedBox(width: 5,),
                      Text('${place.days} días', style: TextStyle(color: Colors.grey))
                    ],
                  )
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: '${place.place} \n', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black)),
                      TextSpan(text: 'Chile ha sido nominado al Mejor Destino de Turismo Aventura en América del Sur 2018 en los World Travel Awards, los Óscar del Turismo. Aunque no es la primera vez que nuestro país ha sido seleccionado por esta prestigiosa organización.')
                    ], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Colors.pink[400],

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Precio\n', style: TextStyle(fontSize: 18)),
                              TextSpan(text: '\$300', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))

                            ]
                          ),
                        ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Recerva una excursión', style: TextStyle(color: Colors.pink, fontSize: 20),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 20,
            left: 10,
            child:  GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}
