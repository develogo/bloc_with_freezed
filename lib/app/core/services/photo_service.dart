import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/photo_model.dart';

part 'photo_service.g.dart';

@RestApi()
abstract class PhotoService {
  factory PhotoService(Dio dio) = _PhotoService;

  @GET("/photos/")
  Future<List<PhotoModel>> getPhotos();
}
