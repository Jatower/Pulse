// Step 4: Create an infinite scrolling lazily loaded list

//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
class Party {
    String name;
    String location;
    List<String> playlist;
    int password;
    bool needPassword;
    Party(String N, String L, List<String> pl, int p, bool NP) {
        this.name =  N;
        this.location = L;
        this.playlist = pl;
        this.password = p;
        this.needPassword = NP;
    }

    String get p_name{
      return this.name;
    }
    String get p_location{
      return this.location;
    }
    List<String> get p_playlist{
      return this.playlist;
    }
    int get p_password{
      return this.password;
    }
    bool get p_needPassword{
      return this.needPassword;
    }

}

void main(){
  Party p1 =  new Party("Jason's Party", "Foss",["Hangang","Break Bread"], 1002, false);
  Party p2 =  new Party("Arthur's Party", "Mary Low",["Sleep","until 4"], 1002, true);
  List<Party> parties = [p1, p2];
  print(parties[0].p_name);
  print(parties[1].p_name);
  print(parties[0].p_location);
  print(parties[1].p_location);
}