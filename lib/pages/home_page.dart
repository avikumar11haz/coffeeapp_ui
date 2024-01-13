import 'package:coffeeapp_ui/util/coffee_tile.dart';
import 'package:coffeeapp_ui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Find the best coffee for you",
            style: GoogleFonts.bebasNeue(
              fontSize: 56,
            ),),
          ),
          SizedBox(height: 25,),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Find your coffee..",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green.shade600),
                )
              ),
            ),
          ),
          const SizedBox(height: 25,),

          //horizontal listview of coffee types
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeType(coffeeType: 'Cappucino',),
                CoffeeType(coffeeType: "Latte"),
                CoffeeType(coffeeType: "Black"),
              ],
            ),
          ),

          //horizontal listview of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
