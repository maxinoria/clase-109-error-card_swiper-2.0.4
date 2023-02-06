


import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';





class  MoviesProvider extends  ChangeNotifier {

            String _apiKey   = '4073bb56ac209f582050025740aca9ed';
            String _baseUrl  = 'api.themoviedb.org';
            String _language = 'es-Es';

            List<Movie> onDisplaymovies = [];


        MoviesProvider(){
          print('MoviesProvider inicializando');
          this.getOnDisplayMovies();
        }




        getOnDisplayMovies() async {

        var url = Uri.https(this._baseUrl, '3/movie/now_playing', {
          'api_key': _apiKey,
          'language': _language,
          'page': '1',
          });
        
          final response = await http.get(url);
          final  nowPlayingResponse = NowPlayingResponse.fromRawJson ( response.body );
         
          onDisplaymovies = nowPlayingResponse.results;
        }



}