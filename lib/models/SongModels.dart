class Song{
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
     required this.description, 
     required this.url, 
    required this.coverUrl});


static List<Song> songs = [
  Song(title: "N95"
  , description: "kendric Lamar"
  ,url: "assets/music/y2mate.com - Kendrick Lamar  N95 Lyrics.mp3"
  ,coverUrl: "assets1/images/n95.png"
    ),
  Song(title: "my eyes"
  , description: "Travis Scott"
  ,url: "assets/music/X2Download.app - Travis Scott - MY EYES FOR 12 MINUTES (SECOND HALF OF THE SONG) ENHANCED AUDIO [DON'T BLINK] (320 kbps).mp3"
  ,coverUrl: "assets1/images/trav.png"
    ),
  Song(title: "swmming"
  , description: "Kendric Lamar"
  ,url: "assets/music/y2mate.com - Kendrick Lamar  Swimming Pools Drank.mp3"
  ,coverUrl: "assets1/images/ken.png"
    ),
];
}