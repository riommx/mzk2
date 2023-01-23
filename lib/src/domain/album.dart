import 'package:muzeek/sid_d_d/sid_d_d.dart';

class Album extends GroupBase {
  const Album._(super.valuesMap);

  factory Album.create({
    required int id,
    required String title,
    required String releaseDate,
    required int upc,
    required int artistId,
  }) =>
      Album._({
        'id': DeezerId(value: id),
        'title': Name(value: title),
        'releaseDate': Date(value: releaseDate),
        'artistId': DeezerId(value: artistId),
        'upc': Upc(value: upc),
      });
}
