import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview2/pet_data.dart';
import 'package:interview2/pet_preview_widget.dart';
import 'package:interview2/search_by_tybe.dart';
import 'package:interview2/search_feild.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  final TextEditingController searchController = TextEditingController();


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Pet Market'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SearchField(
              searchController: widget.searchController,
              onSubmit: (value){
                setState(() {
                  SearchByType().searchPet(type: value);
                  print(SearchByType().petModel!.length);
                });
              },
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => SearchByType().petModel!.isEmpty?
                  PetPreviewWidget(petData: petList[index],)
                  :
                  PetPreviewWidget(petData: SearchByType().petModel![index],),
                  separatorBuilder: (context, index) => const SizedBox(height: 10,),
                  itemCount: petList.length
              ),
            ),
          ],
        ),
      ),
    );
  }
}
