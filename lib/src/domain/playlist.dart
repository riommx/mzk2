import 'package:muzeek/sid_d_d/sid_d_d.dart';

class Playlist extends GroupBase {
  const Playlist._(super.valuesMap);

  factory Playlist.create({
    required int id,
    required String name,
  }) =>
      Playlist._({
        'id': DeezerId(value: id),
        'name': Name(value: name),
      });
}
