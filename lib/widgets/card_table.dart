

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const[
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.view_module,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.local_shipping_outlined,
              text: 'Transport',
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.shopping_cart_outlined,
              text: 'Shipping',
            ),
            _SingleCard(
              color: Colors.yellow,
              icon: Icons.description_outlined,
              text: 'Bills',
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.movie_outlined,
              text: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.broadcast_on_personal_sharp,
              text: 'Grocery',
            ),
          ]
        )
      ]
    );
  }
}

class _SingleCard extends StatelessWidget {

  final String text;
  final IconData icon;
  final Color color;

  const _SingleCard({super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    
    return 
      _CardBackground(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(icon, color: Colors.white,),
        ),
        const SizedBox(height: 10,),
        Text(text, style: TextStyle(
          color: color,
          fontSize: 18
        ))
    ]))
    ;
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),

    );
  }
}