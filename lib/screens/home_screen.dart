import 'package:desings/widgets/background.dart';
import 'package:desings/widgets/custom_bottom_navigator.dart';
import 'package:flutter/material.dart';

import '../widgets/card_table.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         children: [
          Background(),
          _HomeBody(),
         ],
      ),
      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          const CardTable(),
          
  
        ]
        ),
    );
  }
}