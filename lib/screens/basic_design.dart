import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          // Image 
          Image(image: AssetImage('assets/landscape.jpeg')),

          // Title
          Title(),

          ButtonSection(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              'Nulla dolore irure Lorem sit dolore cupidatat. Aliqua deserunt sint amet in amet adipisicing anim ea eiusmod. Velit deserunt aliqua incididunt veniam commodo amet enim velit nisi consequat anim eu cupidatat. Ad voluptate nostrud proident qui cupidatat deserunt in tempor velit proident. Exercitation proident aliquip cillum id ipsum labore nisi ut laborum pariatur minim velit aliqua dolore. Enim et consectetur qui ullamco duis esse voluptate fugiat aliquip laborum. Mollit amet mollit labore ipsum.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomButton(text: 'Call', icon: Icons.call),
          CustomButton(text: 'Route', icon: Icons.location_on_outlined),
          CustomButton(text: 'Share', icon: Icons.share_outlined),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final String text;
  final IconData icon;

  const CustomButton({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue[500], size: 30,),
        Text(text, style: TextStyle( color:  Colors.blue[500]),)
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Camground', style: TextStyle( fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switerland', style: TextStyle( color: Colors.black45)),
            ],
          ),

          Expanded(child: Column()),
          const Icon(Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}