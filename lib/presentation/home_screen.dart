import 'package:demo_flutter/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      // * App Bar
      appBar: AppBar(
        title: const Text(
          "អក្សរខ្មែរ",
          style: TextStyle(fontFamily: "Moul"),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.greenAccent,
                Colors.deepPurpleAccent,
              ]
            )
          ),
        ),
      ),
      // * content
      body:
          Container(
            alignment: Alignment.center,
            color: Colors.grey.shade300,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                    gradient: RadialGradient(
                  colors: [
                    Colors.purpleAccent,
                    Colors.grey.shade300,

                  ]
              )
              ),
            ),
          ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Image.network(
      //         'https://m.media-amazon.com/images/M/MV5BYTUxYjczMWUtYzlkZC00NTcwLWE3ODQtN2I2YTIxOTU0ZTljXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',
      //         color: MyApp.myColor,
      //         colorBlendMode: BlendMode.overlay,
      //       ),
      //     ),
      //   ],
      // ),

      // * Drawer
      drawer: Drawer(
          child: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Home'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Setting'),
            ),
          )
        ],
      )),

      // * End Drawer
      endDrawer: Drawer(
        child: Image.network(
          'https://www.youloveit.com/uploads/posts/2023-05/1683463045_youloveit_com_the_little_mermaid_new_posters.jpg',
          fit: BoxFit.cover,
        ),
      ),
      // * floating Action Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
        backgroundColor:MyApp.myColor,
      ),

      // * Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance),
            ),
            const SizedBox(
              width: 50,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
