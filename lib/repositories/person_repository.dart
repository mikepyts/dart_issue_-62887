import 'package:kiosk2/data_models/person_model.dart';
import 'package:kiosk2/utilities/log.dart';
import 'package:kiosk2/utilities/restful_requests.dart';

class PersonRepository extends ModelRepository<Person> {
  @override
  Person get model => Person();

  @override
  String get repositoryPath => '';

  @override
  void cleanRepository() {
    printLog('Cleaning up person repository');
  }
}
