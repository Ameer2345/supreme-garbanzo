import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/models/SongModels.dart';
import 'package:music_app/screens/song_screen.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }):super (key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed('/song',arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
            width:MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            
            image: DecorationImage(
              image: AssetImage(
                song.coverUrl,
            ),
            fit: BoxFit.cover,
            )
            )
          ),
            Container(
              height: 50,
            width:MediaQuery.of(context).size.width * 0.37,
              margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            color: Colors.white.withOpacity(0.8)
            
            ),
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  song.title,
                  style: Theme.of(context)
                  .textTheme.titleLarge!.copyWith(color: Color.fromARGB(255, 18, 58, 91),
                    fontSize: 20),
                  ),
                  Text(
                  song.description,
                  style: Theme.of(context)
                  .textTheme.titleLarge!.copyWith(color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 10),
                  ),
                ]),
                Icon(Icons.play_circle,color: Color.fromARGB(255, 18, 58, 91))
              ],
            ),
            )
            ]
          ),
          
          
        
      ),
    );
  }
}
