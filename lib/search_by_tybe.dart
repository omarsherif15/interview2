import 'package:flutter/foundation.dart';
import 'package:interview2/pet_data.dart';
import 'package:interview2/pet_model.dart';

class SearchByType {
  List<Pet>? petModel = [];
  List<Pet>? searchPet({required String type}){
    for (var element in petList) {
      print(element.type);
      if(element.type == type){
        petModel!.add(element);
      }
      }
    return petModel;
  }
}