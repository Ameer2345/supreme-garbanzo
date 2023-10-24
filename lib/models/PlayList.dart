import 'SongModels.dart';

class PlayList{
  final String title;
  final List<Song> songs;
  final String imageUrl;

  PlayList({
    required this.title,
    required this.songs,
     required this.imageUrl
      }
      );
  static List<PlayList> playlists = [
    PlayList(
      title : "Hip-hop R&B Mix",
      songs : Song.songs,
      imageUrl :'assets1/images/ken.png'
    ),PlayList(
      title : "Rock & Roll",
      songs : Song.songs,
      imageUrl :'assets1/images/ken.png'
    ),PlayList(
      title : "Phonk",
      songs : Song.songs,
      imageUrl :'assets1/images/ken.png'
    )
  ];
}