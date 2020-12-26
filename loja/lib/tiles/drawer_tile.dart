import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
   IconData icon;
   String text;
   PageController pageController;
   int page;

   DrawerTile({this.icon,this.text,this.pageController,this.page});


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          pageController.jumpToPage(page);
          
        },
        child: Container(
          height: 60,
          child: Row(
            children:[
              Icon(
                  icon,
                  size: 32,
                  color: pageController.page.round() == page ? //O round aproxima o valor
                      Theme.of(context).primaryColor
                      :Colors.grey[700]


              ),
              SizedBox(width: 32,),
              Text(text,
              style:TextStyle(
                fontSize:16,
                color:pageController.page.round() == page ?
                Theme.of(context).primaryColor
                    :Colors.grey[700]
              ))


            ]
          ),
        ),
      ),

    );
  }
}
