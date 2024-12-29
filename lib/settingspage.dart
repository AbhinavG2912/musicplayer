import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'themeprovider.dart';
import 'package:provider/provider.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SETTINGS"),
        ),
        body: Container(
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
          child: Row(
            children:[
              //dark
              Text("Dark Mode"),

              //switch
              CupertinoSwitch(
                value:
                    Provider.of<ThemeProvider>(context, listen:false).isDarkMode,
                onChanged: (value) =>
                    Provider.of<ThemeProvider>(context, listen:false).toggleTheme(),
              )
            ]
          )
        ),
    );
  }
}