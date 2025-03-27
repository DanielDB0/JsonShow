import 'package:flutter/material.dart';
import 'package:json_show/filmes.dart';
import 'package:'

void main() {
  runApp( const MaterialApp (title: "App",
      home: MainApp(),));
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});


  @override
  Exibir createState() => Exibir ();
}

const List<Filmes> Filme = Filmes.fromJson();

class Exibir extends State<MainApp> { 

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: Filme.length,
         shrinkWrap: true,
          itemBuilder: (BuildContext ctx, index){
            return Filme.Nome[index];
          }
        ),
      ),
    );
  }
}
