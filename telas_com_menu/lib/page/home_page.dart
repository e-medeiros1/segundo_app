import 'package:flutter/material.dart';
import 'package:segundo_app/page/pageViews/one_page.dart';

int indexBottomNavigationBar = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Menu
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Center(
                child: UserAccountsDrawerHeader(
              accountName: Text('Eri'),
              accountEmail: Text('github.com/e-medeiros1'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('E'),
              ),
            )),
            ListTile(
              title: Text('Perfil'),
              trailing: Icon(Icons.person),
              onTap: () {
                _pageControler.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: Text('Configurações'),
              trailing: Icon(Icons.settings),
              onTap: () {
                _pageControler.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 2;
                });
              },
            ),
            ListTile(
              title: Text('Sair'),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                _pageControler.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 0;
                });
              },
            ),
          ],
        ),
      ),

      //Barra da tela principal
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
            child: const Text(
          'AppBar',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blue[900],
      ),

      //CONTAINER E ROWS
      body: PageView(
        controller: _pageControler,
        children: [
          const OnePage(),
          Container(
            color: Colors.red[100],
          ),
          Container(color: Colors.yellow[100]),
        ],
      ),

      //BOTÕES
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          setState(() {
            indexBottomNavigationBar = page;
          });
          _pageControler.animateToPage(page,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.minimize_outlined), label: 'Menos'),
          BottomNavigationBarItem(icon: Icon(Icons.restore), label: 'Restaura'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Mais'),
        ],
      ),
    );
  }
}
