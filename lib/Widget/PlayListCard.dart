import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/PlayList.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    required this.playlist,
  });

  final PlayList playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed('/playList',arguments: playlist);
      },
      child: Container(
        height: 75,
        margin:  const EdgeInsets.only(bottom: 10),
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.blueGrey.shade500
        , borderRadius: BorderRadius.circular(15.0)),
    
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          ClipRRect(borderRadius: BorderRadius.circular(15.0),
            child: Image.asset('assets1/images/ken.png',height: 50,
            width: 50,fit:BoxFit.cover,),
          ),
          const SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(playlist.title,
                style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),),
                Text('${playlist.songs.length}songs',
                maxLines: 2,
                style: 
                Theme.of(context).textTheme.bodySmall,)
              ],
            ),
          ),
          IconButton(onPressed:() {}, icon: const Icon(
            Icons.play_circle,color: Colors.white,
          ))
        ]),
      ),
    );
  }
}