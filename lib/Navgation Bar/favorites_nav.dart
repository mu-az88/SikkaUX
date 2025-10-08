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
          child: Column(
            children: [
              SizedBox(height: 94),
              Row(
                children: [
                  FavoritesItem(),
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
      margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
      width: 110,
      height: 110,
    );
  }
}

class appButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final IconData? icon;
  double size;
  appButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.borderColor,
      required this.text,
      required this.size,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
