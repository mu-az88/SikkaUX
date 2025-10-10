import 'package:flutter/material.dart';

class FavoritesNav extends StatelessWidget {
  const FavoritesNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 229, 243, 255),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 84),
                    Row(
                      children: [
                        appButton(
                          backgroundColor: Colors.white,
                          textColor: Color.fromARGB(255, 0, 59, 115),
                          icon: Icons.home_rounded,
                          text: 'Home',
                          size: 110,
                        ),
                        appButton(
                          backgroundColor: Colors.white,
                          textColor: Color.fromARGB(255, 0, 59, 115),
                          icon: Icons.work,
                          text: 'Work',
                          size: 110,
                        ),
                        appButton(
                          backgroundColor: Colors.white,
                          textColor: Color.fromARGB(255, 0, 59, 115),
                          icon: Icons.local_gas_station_rounded,
                          text: 'Station',
                          size: 110,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        appButton(
                            backgroundColor: Colors.white,
                            textColor: Color.fromARGB(255, 255, 167, 38),
                            icon: Icons.add_rounded,
                            text: 'Add',
                            size: 110),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class appButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;
  final String text;
  final IconData? icon;
  final double size;
  appButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderColor,
      required this.text,
      required this.size,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
      width: size,
      height: size,
      child: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Icon(
              icon,
              color: textColor,
              size: 50,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
