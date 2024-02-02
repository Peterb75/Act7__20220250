import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 208, 200, 200),
      ),
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                label: 'Today',
                icon: Icon(CupertinoIcons.clock_solid),
              ),
              BottomNavigationBarItem(
                label: 'Games',
                icon: Icon(CupertinoIcons.folder_badge_person_crop),
              ),
              BottomNavigationBarItem(
                label: 'Apps',
                icon: Icon(CupertinoIcons.folder),
              ),
              BottomNavigationBarItem(
                label: 'Arcade',
                icon: Icon(CupertinoIcons.folder),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(CupertinoIcons.folder),
              ),
            ],
          ),
          tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) => pages[index],
          ),
        ),
      ),
    );
  }
}

final List<Widget> pages = [
  const PageOne(),
  const PageTwo(),
  const PageThree(),
  const PageFour(),
  const PageFive(),
];

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView(
        children: [
          Row(
            children: <Widget>[
              Stack(
                children: [
                  Positioned(
                    child: Text("Today February 2", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.grey,
              child: Stack(
                children: [
                  // Imagen y texto existentes
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                          width: double.infinity,
                          height: 350.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Buho de la salvacion',
                              style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Po',
                              style: TextStyle(fontSize: 16.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Nuevo texto sobre la imagen
                  Positioned(
                    bottom: 90.0,
                    left: 8.0,
                    child: Text(
                      'Salva al buho',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),

                  Positioned(
                    bottom: 70.0,
                    left: 8.0,
                    child: Text(
                      'Po',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 120.0,
                    left: 8.0,
                    child: Text(
                      'Try Now',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),

                  // Otros elementos en la posición original
                  Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 80, 80), // Cambia el color de fondo del botón
                            borderRadius: BorderRadius.circular(8.0), // Ajusta el radio de la esquina si es necesario
                          ),
                          child: TextButton(
                            onPressed: null, // Coloca tu lógica de manejo de clic aquí
                            child: const Text('Get', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const Text(
                          'Cosas de las que hablar',
                          style: TextStyle(fontSize: 8.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: const Color.fromARGB(255, 38, 38, 38),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          child: Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                            width: double.infinity,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salva al Buho 2',
                              style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'El buho corre en vez de volar',
                              style: TextStyle(fontSize: 16.0, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 8.0),
                        TextButton(
                          onPressed: null,
                          child: Icon(CupertinoIcons.cloud_download, color: CupertinoColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("data");
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 3'),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 4'),
    );
  }
}

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.grey[100], // Fondo gris claro
      child: ListView(
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

          CupertinoListSection(
            header: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: CupertinoColors.activeBlue,
                ),
              ],
            ),
            children: const <Widget>[
              CupertinoListTile(
                title: Text('IcloudDrive'),
                leading: Icon(
                  CupertinoIcons.cloud,
                  color: CupertinoColors.systemBlue,
                ),
                trailing: CupertinoListTileChevron(),
              ),
              CupertinoListTile(
                title: Text('On My iPhone'),
                leading: Icon(
                  CupertinoIcons.device_phone_portrait,
                  color: CupertinoColors.systemBlue,
                ),
                trailing: CupertinoListTileChevron(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
