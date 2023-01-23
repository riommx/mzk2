import 'package:muzeek/sid_d_d/sid_d_d.dart';

class TrackFile extends GroupBase {
  const TrackFile._(super.valuesMap);

  factory TrackFile.create({
    required String id,
    required int trackId,
    required String file,
    required bool hifi,
  }) =>
      TrackFile._({
        'id': UniqueId(value: id),
        'trackId': DeezerId(value: trackId),
        'file': LocalFile(value: file),
        'hifi': BoolVo(value: hifi),
      });
}
