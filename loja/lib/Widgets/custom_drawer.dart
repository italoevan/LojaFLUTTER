import 'package:flutter/material.dart';
import 'package:loja/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

 PageController pageController;
 CustomDrawer(this.pageController);
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 203, 236, 241),
                  Colors.white

                ]

            )

        )

    );
    return Drawer(
      child: Stack(
        children:[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32,top:16),
            children: [
              Container(
                margin: EdgeInsets.only(bottom:8),
                padding:EdgeInsets.fromLTRB(0, 16, 16, 8),
                height: 170,
                child: Stack(
                  children: [
                    Positioned(
                      top:8,
                      left:0,
                      child:Text(
                        "Flutter's\n Clothing",
                        style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),

                      )

                    ),
                    Positioned(
                      bottom: 0.0,
                      left:0.0,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("Olá",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        GestureDetector(
                          child:   Text("Entre ou cadastre-se.",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onTap: (){},
                        )
                        ]

                      )

                    )

                  ],

                ),

              ),
              Divider(),
              DrawerTile(
                icon: Icons.home,
                text: "Inicio",
                pageController: pageController,
                page: 0,
              ),
              DrawerTile(
                  icon: Icons.list,
                  text: "Produtos",
                  pageController: pageController,
                  page:1
              ),
              DrawerTile(
                  icon: Icons.location_on,
                  text: "Econtre uma Loja",
                  pageController: pageController,
                  page:2
              ),
              DrawerTile(
                  icon: Icons.playlist_add_check,
                  text: "Meus Pedidos",
                  pageController: pageController,
                  page:3
              ),
            ],
          )
        ]

      ),
    );
  }
}
