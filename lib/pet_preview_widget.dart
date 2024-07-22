import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview2/pet_data.dart';
import 'package:interview2/pet_model.dart';

class PetPreviewWidget extends StatelessWidget {
  const PetPreviewWidget({super.key, required this.petData});

  final Pet petData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image(image: NetworkImage(petData.image),height: 100, width: 100,),
          const SizedBox(width: 10,),
          const Text('', style: TextStyle(fontSize: 20),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(petData.name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(height: 5,),
              Text(petData.type),
              const SizedBox(height: 5,),
              Row(children: [
                Icon(Icons.favorite_border_outlined,color: HexColor('#DB6400'),),
                Text('Pet Love: ${petData.petLove}',style: TextStyle(color: HexColor('#DB6400')),)
              ],)
            ],
          )
        ],
      ),
    );
  }
}
