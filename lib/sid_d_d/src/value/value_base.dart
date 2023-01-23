import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
//
import 'value.dart';
import '../validator/failure.dart';
import '../validator/value_error.dart';

// ################################################
// #  Ver: 3.0 - last: 20/01/23
// #  Nullsafety
// #  Base Class for Validated Value Objects
// ################################################
@immutable
abstract class ValueBase<T> extends Equatable implements Value<T> {
  //
  final T _value;
  //
  final List<Failure> _failures;
  //
  const ValueBase({
    required T value,
    required List<Failure> failures,
  })  : _value = value,
        _failures = failures;
  //
  // ==============================================
  @override // FOR Value
  bool get valid => _failures.isEmpty;

  // ==============================================
  /// Throws [ValueError]
  /// containing the [List<Failure>]
  @override // FOR Value
  T get getOrCrash => valid ? _value : throw ValueError(_failures);

  // ==============================================
  @override // FOR Value
  Iterable<Failure> get failures => _failures;

  // ==============================================
  @override // FOR Value
  T getOr({required T replace}) => valid ? _value : replace;

  // ==============================================
  @override // FOR Equatable
  bool get stringify => true;

  // ==============================================
  @override // FOR Equatable
  List<Object> get props => [
        _value as Object,
        _failures,
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