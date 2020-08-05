import 'package:flutter/foundation.dart';

abstract class RestfulModels {
  dynamic fromJson({@required Map<String, dynamic> json});
  Map<String, dynamic> toJson();
}

class ModelRepository<T extends RestfulModels> {
  ModelRepository({@required this.repositoryPath, @required this.model});
  // Model type
  T model;
  // URL to load serialized data model(s)
  String repositoryPath;
  // Clean up all repository data
  void cleanRepository() {}
}
