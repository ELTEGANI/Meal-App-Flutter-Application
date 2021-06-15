import 'package:flutter/material.dart';
import 'package:meal_app/screens/favorites_screen.dart';
import './categories_screen.dart';

class TabScreen extends StatefulWidget{
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabScreen>{
  @override
  Widget build(BuildContext buildContext){
    return DefaultTabController(length:2,
        child:Scaffold(
      appBar: AppBar(title:Text('Meals'),bottom:TabBar(
        tabs: <Widget>[
          Tab(icon:Icon(Icons.category),text:'Categories'),
          Tab(icon:Icon(Icons.star),text:'Favorites'),

        ],
      ),
      ),
      body: TabBarView(children: <Widget>[
          CategoriesScreen(),FavoritesScreen()
      ],),
    )
    );
  }
}