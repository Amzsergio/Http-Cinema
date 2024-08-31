import 'package:http_cinema/domain/datasources/movies_datasourse.dart';
import 'package:http_cinema/domain/entities/movie.dart';
import 'package:http_cinema/domain/repositories/movies_repository.dart';

class MoviesRepositoryImp extends MoviesRepository {
  final MoviesDatasource datasource;

  MoviesRepositoryImp(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
