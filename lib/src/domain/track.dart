import 'package:muzeek/sid_d_d/sid_d_d.dart';

class Track extends GroupBase {
  const Track._(super.valuesMap);

  factory Track.create({
    required int id,
    required String title,
    required int duration,
    required int albumId,
    required int artistId,
    required String previewURL,
  }) =>
      Track._({
        'id': DeezerId(value: id),
        'title': Name(value: title),
        'duration': DurationSeconds(value: duration),
        'albumId': DeezerId(value: albumId),
        'artistId': DeezerId(value: artistId),
        'previewURL': UrlAddress(value: previewURL),
      });
}
