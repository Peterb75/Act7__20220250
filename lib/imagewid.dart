import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  CustomListTile({required this.title, required this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 32.0,
            height: 32.0,
          ),
        ],
      ),
      trailing: ElevatedButton(
        onPressed: () {
          // Lógica que se ejecutará al presionar el botón
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // Color de fondo azul
        ),
        child: Text('Get', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom List Tiles'),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CupertinoSearchTextField(
                        placeholder: 'Search',
                        placeholderStyle: const TextStyle(color: Colors.grey),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        onSubmitted: (String value) {
                          print('Searched for: $value');
                        },
                      ),
                      const Positioned(
                        right: 8.0,
                        child: Icon(
                          CupertinoIcons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.0),
                  //1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Chrome cast',
                            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 72.0),
                          Text(
                            'fire tv',
                            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'pdf converter',
                            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 30.0),
                          Text(
                            'my little pony',
                            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'matematicas',
                            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'juegos de terror',
                            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            CustomListTile(
              title: 'Booking.com Travel Deals',
              subtitle: 'Hotel & Vacation Rentals',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Pokémon GO',
              subtitle: 'Epic AR adventure & online RPG',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Roblox',
              subtitle: 'Join Millions of Experiences',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Stumble Guys',
              subtitle: 'Fun multiplayer knockout game',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'League of Legends: Wild Rift',
              subtitle: 'Competitive 5v5 MOBA Action',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Pokémon Unite',
              subtitle: 'Choose a Pokémon and team up!',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Clash Royale',
              subtitle: 'Epic Real-Time-PvP Battles',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Mario Kart Tour',
              subtitle: 'Race around the world!',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Avatar World: City Life',
              subtitle: 'Be Whoever You Want!',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Subway Surfers',
              subtitle: 'Join the endless running fun!',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'EA SPORTS FC™ Mobile Futbol',
              subtitle: 'FIFA Mobile is now FC Mobile!',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Good Pizza, Great Pizza',
              subtitle: 'Pizza Business Simulator',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Woodoku - Wood',
              subtitle: 'Sudoku & Jigsaw Brain Games',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Me+ Daily Routine Planner',
              subtitle: '2024 New Year Resolution',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Water Sort Puzzle',
              subtitle: 'Color sorting puzzle games',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'War Robots Multiplayer Battles',
              subtitle: '6v6 PvP Tactical Robo Action',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            CustomListTile(
              title: 'Happy Color Colour',
              subtitle: 'Painting book, coloring games',
              imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
