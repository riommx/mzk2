import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
//
import 'group.dart';
import '../value/value.dart';
import '../validator/failure.dart';
import '../value/value_classes.dart';

@immutable
abstract class GroupBase extends Equatable implements Group {
  //
  final Map<String, Value> valuesMap;
  //
  const GroupBase(this.valuesMap);
  // ==============================================
  @override // FOR Group
  Map<String, Value> get values => valuesMap;
  // ==============================================

  // ==============================================
  @override // FOR Group
  Value value(String key) {
    if (valuesMap.containsKey(key)) {
      for (var entry in valuesMap.entries) {
        if (entry.key == key) return entry.value;
      }
    }
    return GroupFailure(key: key);

    //
  }

  @override // FOR Group
  Map<String, dynamic> toMapOrCrash() {
    var map = <String, dynamic>{};
    for (var entrie in valuesMap.entries) {
      map.putIfAbsent(entrie.key, () => entrie.value.getOrCrash);
    }
    return map;
  }

  // ==============================================
  @override // FOR Group
  Map<String, Iterable<Failure>> get failures {
    var map = <String, Iterator<Failure>>{};
    for (var entrie in valuesMap.entries) {
      if (entrie.value.failures.isNotEmpty) {
        map.putIfAbsent(entrie.key, () => entrie.value.failures.iterator);
      }
    }
    return Map.unmodifiable(map);
  }

  // ==============================================
  @override // FOR Equatable
  bool get stringify => true;

  // ==============================================
  @override // FOR Equatable
  List<Value> get props => valuesMap.values.toList();
}
