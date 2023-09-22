import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/Get%20x/Favoriate.dart';

class AddFavourite extends StatefulWidget {
  const AddFavourite({super.key});

  @override
  State<AddFavourite> createState() => _AddFavouriteState();
}

class _AddFavouriteState extends State<AddFavourite> {
  Favorites favoritesList = Get.put(Favorites());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("List Add favourite"),),
      body: ListView.builder(
        itemCount:favoritesList.name.length ,
        itemBuilder: (context, index) {
         return Card(
           child:  ListTile(
               title: Text(favoritesList.name[index],style: const TextStyle(color: Colors.black)),
               trailing: IconButton(onPressed: () {
                if(favoritesList.favName.contains(favoritesList.name[index])){
                  favoritesList.removeFavorite(favoritesList.name[index]);
                }
                else{
                  favoritesList.addFavorite(favoritesList.name[index]);
                }

               }, icon: Obx(() => Icon(Icons.favorite,
                 color: favoritesList.favName.contains(favoritesList.name[index])?Colors.red:Colors.black,),)
               )
           ),
         );

      },),
    ));
  }
}
