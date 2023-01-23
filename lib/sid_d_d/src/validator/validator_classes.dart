import 'validator.dart';
import 'failure.dart';

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a dynamic value
// #  with a costum FUNCTION
// ################################################
class ValidatorFunction implements Validator<dynamic> {
  //
  final bool Function(dynamic v) function;
  //
  final String functionLiteral;
  //
  const ValidatorFunction(
      {required this.function,
      this.functionLiteral = 'Function Literal not given'});
  //
  @override // FOR Validator
  List<Failure> failures({required dynamic value}) => function(value)
      ? []
      : [
          Failure(
              'Failure: Fail to pass Function valitation, function: $functionLiteral, Value: $value, Type: ${value.runtimeType}'),
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a Positive Num
// ################################################
class ValidatorPositive implements Validator<num> {
  @override
  List<Failure> failures({required num value}) => value.isNegative
      ? [
          Failure(
              'Failure: Value must be positive, Value: $value, Type: ${value.runtimeType}'),
        ]
      : [];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a Negative Num
// ################################################
class ValidatorNegative implements Validator<num> {
  @override
  List<Failure> failures({required num value}) => value.isNegative
      ? []
      : [
          Failure(
              'Failure: Value must be negative, Value: $value, Type: ${value.runtimeType}')
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a Min Num
// ################################################
class ValidatorMinValue implements Validator<num> {
  //
  final num min;
  //
  const ValidatorMinValue({required this.min});
  //
  @override // FOR Validator
  List<Failure> failures({required num value}) => value >= min
      ? []
      : [
          Failure(
              'Failure: Value must higher than $min, Value: $value, Type: ${value.runtimeType}')
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a Min Num
// ################################################
class ValidatorMaxValue implements Validator<num> {
  //
  final num max;
  //
  const ValidatorMaxValue({required this.max});
  //
  @override // FOR Validator
  List<Failure> failures({required num value}) => value <= max
      ? []
      : [
          Failure(
              'Failure: Value must be lower than $max, Value: $value, Type: ${value.runtimeType}')
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a String RegExp
// ################################################
class ValidatorRegExp implements Validator<String> {
  //
  final RegExp regExp;
  //
  const ValidatorRegExp({required this.regExp});
  //
  @override // FOR Validator
  List<Failure> failures({required String value}) => regExp.hasMatch(value)
      ? []
      : [
          Failure(
              'Failure: Value must match $regExp, Value: $value, Type: ${value.runtimeType}')
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a String Min Length
// ################################################
class ValidatorMinLength implements Validator<String> {
  //
  final int min;
  //
  const ValidatorMinLength({required this.min});
  //
  @override // FOR Validator
  List<Failure> failures({required String value}) => value.length >= min
      ? []
      : [
          Failure(
              'Failure: Value length must be higher than $min, Value: $value, Type: ${value.runtimeType}')
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a String Max Length
// ################################################
class ValidatorMaxLength implements Validator<String> {
  //
  final int max;
  //
  const ValidatorMaxLength({required this.max});
  //
  @override // FOR Validator
  List<Failure> failures({required String value}) => value.length <= max
      ? []
      : [
          Failure(
              'Failure: Value length must be lower than $max, Value: $value, Type: ${value.runtimeType}')
        ];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a String Single Line
// ################################################
class ValidatorSingleLine implements Validator<String> {
  //
  @override // FOR Validator
  List<Failure> failures({required String value}) => value.contains('\n')
      ? [
          Failure(
              'Failure: Value must be single line, Value: $value, Type: ${value.runtimeType}')
        ]
      : [];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a String  Empty
// ################################################
class ValidatorNotEmpty implements Validator<String> {
  //
  @override // FOR Validator
  List<Failure> failures({required String value}) => value.isEmpty
      ? [
          Failure(
              'Failure: Value must not be empty, Value: $value, Type: ${value.runtimeType}')
        ]
      : [];
}

// ################################################
// #  Ver: 3.0 - last: 19/01/23
// #  Nullsafety
// #  Class to check if is valid a String Date Format
// ################################################
class ValidatorDateFormat implements Validator<String> {
  //
  @override // FOR Validator
  List<Failure> failures({required String value}) =>
      DateTime.tryParse(value) != null
          ? []
          : [
              Failure(
                  'Failure: Value must be in DateTime format, Value: $value, Type: ${value.runtimeType}')
            ];
}

// ################################################
// #  Ver: 3.0 - last: 01/01/23
// #  Nullsafety
// #  Class to check if is valid a String Uuid
// TODO: Realy validade UUID
// ################################################
class ValidatorUuid implements Validator<String> {
  //
  @override // FOR ValidatorChecker
  List<Failure> failures({required String value}) => value != ''
      ? []
      : [
          Failure(
              'Failure: Value must be a valid UUid, Value: $value, Type: ${value.runtimeType}')
        ];
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
