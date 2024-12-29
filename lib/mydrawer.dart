import 'package:flutter/material.dart';
import 'settingspage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Theme.of(context).colorScheme.background,
      child: Column(
        children:[
          //logo
          DrawerHeader(
            child: Center(
              child:Icon(
                Icons.music_note,
                size:40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          //home titl
          Padding(
            padding: const EdgeInsets.only(left:25.0,top:25),
            child: ListTile(
              title: const Text("HOME"),
              leading: const Icon(Icons.home),
              onTap:()=> Navigator.pop(context),
            ),
          ),

          //setting title
             Padding(
            padding: const EdgeInsets.only(left:25.0,top:0),
            child: ListTile(
              title: const Text("SETTINGS"),
              leading: const Icon(Icons.settings),
              onTap:(){
                //pop drawer
                 Navigator.pop(context);

                 //navigate to setting pg
                 Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder:(context) => Settingspage(),),);
                
              },
            ),
          ),
        ]

      )
    );
  }
}