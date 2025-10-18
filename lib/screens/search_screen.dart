import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 229, 243, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 229, 243, 255),
        title: Center(
            child: Text(
          'Where Are We Going?',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        )),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SearchField(),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Icon(Icons.map, color: Colors.white),
                  SizedBox(width: 13),
                  Text(
                    'Drop a pin on the map',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 77),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white, size: 20),
                ],
              ),
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Color.fromARGB(255, 0, 59, 115),
              ),
            ),
            SizedBox(height: 41),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Search History',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 25, 20, 100),
              height: 350,
              width: double.infinity,
              child: Column(
                children: [
                  PrevSearch(
                    city: 'Khartoum',
                    location: 'UofK',
                  ),
                  PrevSearch(
                    city: 'Khartoum',
                    location: 'Jabra',
                  ),
                  PrevSearch(
                    city: 'Um Durman',
                    location: 'Murabbaat',
                  ),
                  PrevSearch(
                    city: 'Um Durman',
                    location: 'Thawra',
                  ),
                  PrevSearch(
                    city: 'Sharq Alneel',
                    location: 'Haj Yousif',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* 


search field widget




*/
class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(Icons.search),
        hintText: 'Search for a destination',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 0, 59, 115)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 0, 59, 115)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}

class PrevSearch extends StatelessWidget {
  final String city;
  final String location;
  const PrevSearch({super.key, required this.city, required this.location});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/setDestination');
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.history,
              size: 28,
              color: Colors.grey,
            ),
            SizedBox(width: 15),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  city,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
