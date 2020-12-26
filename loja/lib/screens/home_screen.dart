import 'package:flutter/material.dart';
import 'package:loja/Widgets/custom_drawer.dart';
import 'package:loja/tabs/home_tab.dart';
import 'package:loja/tabs/products_tab.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      //Faz com que não seja possivel ficar arrastando com facilidade
      children: [
       Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),

       ),
       Scaffold(
         appBar: AppBar(
           title:Text("Produtos"),
           centerTitle: true,
         ),
         drawer: CustomDrawer(_pageController),
         body: ProductsTab(),

       ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        )


      ],
    );
  }
}
