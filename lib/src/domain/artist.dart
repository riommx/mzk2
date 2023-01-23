import 'package:muzeek/sid_d_d/sid_d_d.dart';

class Artist extends GroupBase {
  const Artist._(super.valuesMap);

  factory Artist.create({
    required int id,
    required String name,
  }) =>
      Artist._({
        'id': DeezerId(value: id),
        'name': Name(value: name),
      });
}
