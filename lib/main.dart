import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'party.dart';

void main() => runApp(new Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new BuildParties(),
    );
  }
}

class BuildParties extends StatefulWidget {
  @override
  createState() => new BuildPartiesState();
}

class BuildPartiesState extends State<BuildParties> {
  Party p1 =  new Party("Jason's Party", "Foss",["Hangang","Break Bread"], 1002, false);
  Party p2 =  new Party("Arthur's Party", "Mary Low",["Sleep","until 4"], 1002, true);
  List<Party> parties = [this.p1, this.p2];

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pulse - Party List'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;

        return _buildPartyRow(parties[index]);
      },
      itemCount: 2*parties.length
    );
  }

  Widget _buildPartyRow(Party p) {
    return new ListTile(
      title: new Text(
        p.p_name,
        style: _biggerFont,
      ),

      onTap: () {
        _openPlaylist();
      },
    );
  }

  void _openPlaylist() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Music Playlist'),
            ),
          );
        },
      ),
    );
  }
}