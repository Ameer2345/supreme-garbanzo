import 'package:flutter/material.dart';

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