/* import 'package:kt_dart/kt.dart';
//
import 'core/entity/entity.dart';
import 'album/album.dart';
import 'album/album_factory.dart';
import 'artist/artist.dart';
import 'artist/artist_factory.dart';
import 'playlist/playlist.dart';
import 'playlist/playlist_factory.dart';
import 'track/track.dart';
import 'track/track_factory.dart';
import 'track_files/track_files.dart';
import 'track_files/track_files_factory.dart';

//
// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class Muz {
  //
  // =====================================================================
  static Entity fromMap({
    required Map map,
    required Type type,
  }) {
    var entity;
    switch (type) {
      //
      case Artist:
        entity = ArtistFactory.create(
          id: int.parse(map['id']),
          name: map['name'],
        );
        break;
      //
      case Album:
        entity = AlbumFactory.create(
            id: int.parse(map['id']),
            title: map['title'],
            releaseDate: map['releaseDate'],
            upc: int.parse(map['upc']),
            artistId: int.parse(
              map['artistId'],
            ));
        break;
      //
      case Track:
        entity = TrackFactory.create(
          id: int.parse(map['id']),
          title: map['title'],
          duration: int.parse(map['duration']),
          albumId: int.parse(map['albumId']),
          artistId: int.parse(map['artistId']),
          previewURL: map['previewURL'], //url,
        );
        break;
      //
      case Playlist:
        var intList = <int>[];
        map['tracks'].forEach((e) => intList.add(int.parse(e)));
        entity = PlaylistFactory.create(
          id: int.parse(map['id']),
          name: map['name'],
          tracks: intList.toImmutableList(),
        );
        break;
      //
      case TrackFiles:
        var strList = <String>[];
        map['files'].forEach((file) => strList.add(file));
        entity = TrackFilesFactory.create(
          id: int.parse(map['id']),
          files: strList.toImmutableList(),
        );
        break;
    }
    //
    return entity;
  }
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
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXI >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━━╯┈┈    --->  May the source be with you!  <---
// *  v 3.0 nullsafety
// ******************************************************************
 */