import 'package:uuid/uuid.dart';
//
import 'value_base.dart';
import '../validator/failure.dart';
import '../validator/validator_classes.dart';

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Date Format String
// ################################################
class GroupFailure extends ValueBase<String> {
  //
  GroupFailure({required String key})
      : super(
          value: 'Failure',
          failures: [Failure('Group have no value with key: $key')],
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Unique ID
// ################################################
class UniqueId extends ValueBase<String> {
  //
  UniqueId({required String value})
      : super(
          value: value.isEmpty ? Uuid().v1() : value,
          failures: [],
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Unique ID
// ################################################
class Upc extends ValueBase<int> {
  //
  static List<Failure> validators(int value) {
    //
    final min = ValidatorMinValue(min: 1);
    //
    var list = <Failure>[];
    //
    list.addAll(min.failures(value: value));
    //
    return list;
  }

  //
  Upc({required super.value})
      : super(
          failures: validators(value),
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Unique ID
// ################################################
class DeezerId extends ValueBase<int> {
  //
  static List<Failure> validators(int value) {
    //
    final min = ValidatorMinValue(min: 1);
    //
    var list = <Failure>[];
    //
    list.addAll(min.failures(value: value));
    //
    return list;
  }

  //
  DeezerId({required super.value})
      : super(
          failures: validators(value),
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Date Format String
// ################################################
class Date extends ValueBase<String> {
  //
  Date({required super.value})
      : super(
          failures: ValidatorDateFormat().failures(value: value),
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Date Format String
// ################################################
class DurationSeconds extends ValueBase<int> {
  //
  DurationSeconds({required super.value})
      : super(
          failures: ValidatorPositive().failures(value: value),
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Date Format String
// ################################################
class BoolVo extends ValueBase<bool> {
  //
  BoolVo({required super.value}) : super(failures: []);
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Name String
// ################################################
class Name extends ValueBase<String> {
  //

  static List<Failure> validators(String value) {
    //
    final notEmpty = ValidatorNotEmpty();
    final singleLine = ValidatorSingleLine();
    final minLength = ValidatorMinLength(min: 4);
    final maxLength = ValidatorMaxLength(max: 10);
    final regExp = ValidatorRegExp(regExp: RegExp(r'^[a-zA-Z\s]+$'));
    final function = ValidatorFunction(
      function: (v) => v != 'Hitler',
      functionLiteral: 'bool fun(v) => v != \'Hitler\';',
    );
    //
    var list = <Failure>[];
    //
    list.addAll(notEmpty.failures(value: value));
    list.addAll(singleLine.failures(value: value));
    list.addAll(minLength.failures(value: value));
    list.addAll(maxLength.failures(value: value));
    list.addAll(regExp.failures(value: value));
    list.addAll(function.failures(value: value));
    //
    return list;
  }

  //
  Name({required super.value})
      : super(
          failures: validators(value),
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Name String
// ################################################
class UrlAddress extends ValueBase<String> {
  //

  static List<Failure> validators(String value) {
    //
    final notEmpty = ValidatorNotEmpty();
    final singleLine = ValidatorSingleLine();
    final minLength = ValidatorMinLength(min: 4);
    final maxLength = ValidatorMaxLength(max: 10);
    final regExp = ValidatorRegExp(regExp: RegExp(r'^[a-zA-Z\s]+$'));
    final function = ValidatorFunction(
      function: (v) => v != 'Hitler',
      functionLiteral: 'bool fun(v) => v != \'Hitler\';',
    );
    //
    var list = <Failure>[];
    //
    list.addAll(notEmpty.failures(value: value));
    list.addAll(singleLine.failures(value: value));
    list.addAll(minLength.failures(value: value));
    list.addAll(maxLength.failures(value: value));
    list.addAll(regExp.failures(value: value));
    list.addAll(function.failures(value: value));
    //
    return list;
  }

  //
  UrlAddress({required super.value})
      : super(
          failures: validators(value),
        );
}

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Value Object Class for Name String
// ################################################
class LocalFile extends ValueBase<String> {
  //

  static List<Failure> validators(String value) {
    //
    final notEmpty = ValidatorNotEmpty();
    final singleLine = ValidatorSingleLine();
    final minLength = ValidatorMinLength(min: 4);
    final maxLength = ValidatorMaxLength(max: 10);
    final regExp = ValidatorRegExp(regExp: RegExp(r'^[a-zA-Z\s]+$'));
    final function = ValidatorFunction(
      function: (v) => v != 'Hitler',
      functionLiteral: 'bool fun(v) => v != \'Hitler\';',
    );
    //
    var list = <Failure>[];
    //
    list.addAll(notEmpty.failures(value: value));
    list.addAll(singleLine.failures(value: value));
    list.addAll(minLength.failures(value: value));
    list.addAll(maxLength.failures(value: value));
    list.addAll(regExp.failures(value: value));
    list.addAll(function.failures(value: value));
    //
    return list;
  }

  //
  LocalFile({required super.value})
      : super(
          failures: validators(value),
        );
}

// ******************************************************************
// *    _____   _   _____      _______   ______    _____   _    _
// *   / ____| | | |  __ \    |__   __| |  ____|  / ____| | |  | |
// *  | (___   | | | |  | |      | |    | |__    | |      | |__| |
// *   \___ \  | | | |  | |      | |    |  __|   | |      |  __  |
// *   ____) | |_| | |__| |      | |    | |____  | |____  | |  | |
// *  |_____/  (_) |_____/       |_|    |______|  \_____| |_|  |_|
// *
// *  ┈┈┈╭━━╮┈┈┈┈┈┈
// *  ┈┈╭╯┊◣╰━━━━╮┈┈
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXIII >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈        -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// *
// ******************************************************************