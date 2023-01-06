import 'package:flutter/material.dart';
import '../../resources/resources.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  const Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = const [
    Movie(
      id: 1,
      imageName: AppImages.moviePlacholder,
      title: 'TOP GUN',
      time: 'April 7, 2021',
      description:
          'Fhjshfkhfdkhskjhkjsdhfkjsdhfjhsdfkjhsdkjfhskjdhfkjsdhfjsdhfkjhsdfjhsdkjfhskhdfksdhfkjdshfkjhsdkjfhskjdfhskjdhfkjshdfkjhsdkjfhskjdfhksjhfjdhgfkjshgkjdhjghfjksdhkjgfdhgjkhdgkjhdskghsfjghsdfhgairhe',
    ),
    Movie(
      id: 2,
      imageName: AppImages.moviePlacholder,
      title: 'The Walking Dead',
      time: '31 Oct 2010',
      description:
          'sdjfhskdhskjdhfjksdhfkjdhkfjshkjnfhvbhjbfkhvbkjnkjgnfkjvnkjnvkjngkjfvn',
    ),
    Movie(
      id: 3,
      imageName: AppImages.moviePlacholder,
      title: 'Grey\'s Anatomy',
      time: '27 Mar 2005',
      description:
          'sdjfhskdhskjdhfjksdhfkjdhkfjshkjnfhvbhjbfkhvbkjnkjgnfkjvnkjnvkjngkjfvn',
    ),
    Movie(
      id: 4,
      imageName: AppImages.moviePlacholder,
      title: 'The Big 4',
      time: '19 Dec 2022',
      description:
          'sdjfhskdhskjdhfjksdhfkjdhkfjshkjnfhvbhjbfkhvbkjnkjgnfkjvnkjnvkjngkjfvn',
    ),
    Movie(
      id: 5,
      imageName: AppImages.moviePlacholder,
      title: 'The Witcher: Blood Origin',
      time: '25 Dec 2022',
      description:
          'sdjfhskdhskjdhfjksdhfkjdhkfjshkjnfhvbhjbfkhvbkjnkjgnfkjvnkjnvkjngkjfvn',
    ),
    Movie(
      id: 6,
      imageName: AppImages.moviePlacholder,
      title: 'Medieval',
      time: '08 Sep 2022',
      description:
          'sdjfhskdhskjdhfjksdhfkjdhkfjshkjnfhvbhjbfkhvbkjnkjgnfkjvnkjnvkjngkjfvn',
    ),
    Movie(
      id: 7,
      imageName: AppImages.moviePlacholder,
      title: 'Disenchanted',
      time: '18 Nov 2022',
      description:
          'sdjfhskdhskjdhfjksdhfkjdhkfjshkjnfhvbhjbfkhvbkjnkjgnfkjvnkjnvkjngkjfvn',
    ),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      '/main_screen/movie_details',
      arguments: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: const EdgeInsets.only(top: 60),
            itemCount: _filteredMovies.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, int index) {
              final movie = _filteredMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: const Offset(2, 2)),
                          ]),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Image(image: AssetImage(movie.imageName)),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  Text(
                                    movie.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    movie.time,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    movie.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => _onMovieTap(index),
                      ),
                    ),
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Search',
                filled: true,
                fillColor: Colors.white.withAlpha(200),
                border: const OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
