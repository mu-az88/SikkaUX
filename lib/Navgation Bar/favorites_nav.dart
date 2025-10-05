import 'package:flutter/material.dart';

class FavoritesNav extends StatelessWidget {
  const FavoritesNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
              child: Text('Favorites', style: TextStyle(color: Colors.black))),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Column(
            children: [
              SizedBox(height: 94),
              Row(
                children: [
                  FavoritesItem(),
                  FavoritesItem(),
                ],
              )
            ],
          ),
        ));
  }
}

class FavoritesItem extends StatelessWidget {
  const FavoritesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
      ),
      margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
      width: 110,
      height: 110,
    );
  }
}
