import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // TODO: Cambiar luego por una instancia de movie
    final String movie = ModalRoute.of(context)?.settings.arguments.toString()?? 'no-movie';
    
    return   Scaffold(
      body:  CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
           delegate: SliverChildListDelegate([
                _PostenAndTitle(),
                _Overview(),
                _Overview(),
                _Overview(),
                CastingCards(),
               
           ])
           
         ),
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {


  @override
  Widget  build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 100,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const  EdgeInsets.all(0) ,
        title:  Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 5),
          color: Colors.black12,
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 16),
            ),
          ),

        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/500x400'),
          fit: BoxFit.cover,
          ),
      ),
    );
   
  }
}



class _PostenAndTitle extends StatelessWidget {

    
  
    @override
    Widget build(BuildContext context) {

      final TextTheme textTheme= Theme.of(context).textTheme;

      return Container(
        margin: const EdgeInsets.only(top:20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/200x300'),
                height: 150,             
              ),
            ),

            SizedBox(width: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('movie.title', style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                Text('movie.originalTitle', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 1,),

                 Row(
                  children:   [
                    const Icon(Icons.star_border_outlined, size: 15, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text('movie.voteAverage', style: Theme.of(context).textTheme.caption),
                  ]
                )
              ],
            )
          ]),  



      );
    }
  }


class _Overview extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Reprehenderit reprehenderit in anim ut in quis consectetur dolor quis.',                                                                                                                                         
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
        ),
       
    );
  }
}