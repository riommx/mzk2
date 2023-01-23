import 'package:muzeek/sid_d_d/sid_d_d.dart';

class PlaylistTrack extends GroupBase {
  const PlaylistTrack._(super.valuesMap);

  factory PlaylistTrack.create({
    required int playlistId,
    required int trackId,
  }) =>
      PlaylistTrack._({
        'playlistId': DeezerId(value: playlistId),
        'trackId': DeezerId(value: trackId),
      });
}
