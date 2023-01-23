import '../validator/failure.dart';
import '../value/value.dart';

abstract class Group {
  //
  Map<String, Value> get values;
  //
  Value value(String key);
  //
  Map<String, Iterable<Failure>> get failures;
  //
  Map<String, dynamic> toMapOrCrash();
}
