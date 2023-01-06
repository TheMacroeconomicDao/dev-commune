import 'package:flutter/material.dart';
import '../movie_list/movie_list_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedItem = 0;

  void onSelectItem(int index) {
    setState(() {
      if (_selectedItem == index) return;
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TheMovieDB'),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/auth');
                  },
                  child: const Icon(
                    Icons.exit_to_app_outlined,
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
      body: IndexedStack(
        index: _selectedItem,
        children: const [
          Center(child: Text('Community')),
          Center(child: Text('Friends')),
          MovieListWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.globe), label: 'Community'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.users), label: 'Friends'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cubes), label: 'Projects'),
        ],
        onTap: onSelectItem,
      ),
    );
  }
}
