
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:rxdart/rxdart.dart';
//import 'package:just_audio/just_audio.dart';

import '../Widget/PlayListCard.dart';
import '../Widget/song_card.dart';
import '../models/PlayList.dart';
import '../models/SongModels.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<Song> songs = Song.songs;
    List<PlayList> playlists = PlayList.playlists;
    return 
    
    Container(decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.blueGrey.shade300,
          Colors.blueGrey.shade600,
          Colors.blueGrey.shade700,
          Colors.blueGrey.shade800
          ,Colors.blueGrey.shade900
        ]
        ),
    ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: const _CustomNavBar(),
         body: SingleChildScrollView(
          child: Column(
           children: [
            const _DiscoverMusic(),
            _TrendingMusic(songs: songs),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                 const SectionHeader(title: 'Playlists'),
                 
                 ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 20.0),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: playlists.length,
                  itemBuilder: ((context,index){
                  return PlayListCard(playlist: playlists[index]);
                 }))
                ],
              ),
            )
        ],
        ),
        ),
    ),
    );
  }
}



class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(left: 20.0,top: 20.0,bottom: 20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title : 'Trending Music'),
          ),
          const SizedBox(height: 20),
          SizedBox(height: MediaQuery.of(context).size.height * 0.27,
          child:  ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songs.length,
            itemBuilder: (context, index){
              return SongCard(song: songs[index])
              ;
            },
          ),)
              ],
              ),
    );
  }
}



class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    this.action = 'View More', 
  }):super (key: key);
  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
      Text(
      title,
     style: Theme.of(context).textTheme.headline6!.copyWith(
      color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    ),
    Text(action,
     style: Theme.of(context).textTheme.headline6!.copyWith(
      color: Colors.white,
    fontWeight: FontWeight.bold,)
    ,
    )
              ],
            );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    Key? key,

  }):super (key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start
        ,children: [
          Text(
            "Welcome ",
            style: Theme.of(context).textTheme.bodyLarge!,),
            const SizedBox(height: 5,)
          ,Text(
            "Enjoy all the music in one place",
            style: Theme.of(context)
            .textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),const SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: "Search",
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade800),
              prefixIcon: 
              Icon(Icons.search,color: Colors.grey.shade800),
              border: OutlineInputBorder(
                borderRadius : BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              )
            ),
          )
        ],
      ),
    );
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
     Key? key,

  }):super (key:key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
      label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline),
      label: "Favorites",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.play_circle_outline),
      label: "Play",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people_outline),
      label: "Profile",
      ),
      ],
      );
  }
}


class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const _CustomAppBar({
    Key? key,
  }) : super (key: key);

  @override 
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets1/images/trav.png'),
          ),
        )
      ],
    );
  }
 
  
  @override
 
  Size get preferredSize => const Size.fromHeight(56.0);
}