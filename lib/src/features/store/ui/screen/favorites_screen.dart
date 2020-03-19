import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text("Drawer Header"),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Favoritos"),
                  leading: Icon(Icons.favorite),
                  onTap: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritesScreen())
                    ), 
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromARGB(255, 8, 1, 35),
          title: Text('IBACREA'),
        ),

        body: ListView(
          
        ),

        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: [BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color:Colors.grey),
            title: Text('Productos',style: TextStyle(color: Colors.grey))
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.person,color:Colors.grey),
            title: Text('Servicios',style: TextStyle(color: Colors.grey))
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.phone,color:Colors.grey),
            title: Text('Contactos',style: TextStyle(color: Colors.grey))
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.build,color:Colors.grey),
            title: Text('Ajustes',style: TextStyle(color: Colors.grey))
            ),
            ]
          ),
    );
  }
}