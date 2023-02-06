
import 'package:flutter/material.dart';


import 'package:peliculas/providers/movies_provider.dart';

import '../widgets/widgets.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final  moviesProvider = Provider.of<MoviesProvider>(context);

    

    return  Scaffold(
      appBar: AppBar(
        title: const FittedBox(
          child:  Text('Peliculas en cine')
        ),
        
        elevation: 0,
        actions:   [
             IconButton(
            icon: const Icon( Icons.search_outlined),
            onPressed: () {},
          
          )
        ],
        
      ),
      body:  SingleChildScrollView(
        child: Column(
        children:   [
            // Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplaymovies),
            
            //Slider de peliculas
            MovieSlider(),
            
            
            
        ]
      ),
      )
     );
  }
}