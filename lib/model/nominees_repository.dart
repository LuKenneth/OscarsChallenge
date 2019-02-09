// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'classes.dart';

class NomineeRepository {
  static List<Nominee> loadNominees(Category category) {
    var allNominees = <Nominee> [
      Nominee(
        Category(0,'Best Picture'),
        'Black Panther',
        'Kevin Feige',
        oscarImgs[0],
      ),
      Nominee(
        Category(0,'Best Picture'),
        'BlacKkKlansman',
        'Sean McKittrick, Jason Blum, Raymond Mansfield, Jodan Peele and Spike Lee',
        oscarImgs[1],
      ),
      Nominee(
        Category(0,'Best Picture'),
        'Bohemian Rhapsody',
        'Graham King',
        oscarImgs[2],
      ),
      Nominee(
        Category(0,'Best Picture'),
        'The Favourite',
        'Ceci Dempsey, Ed Guiney, Lee Magiday and Yorgos Lanthimos',
        oscarImgs[3],
      ),
      Nominee(
        Category(0,'Best Picture'),
        'Green Book',
        'Jim Burke, Charles B. Wessler, Brian Currie, Peter Farrelly and Nick Vallelonga',
        oscarImgs[4],
      ),
      Nominee(
        Category(0,'Best Picture'),
        'Roma',
        'Gabriela Rodríguez and Alfonso Cuarón',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Best Picture'),
        'A Star Is Born',
        'Bill Gerber, Bradley Cooper and Lynette Howell Taylor',
        oscarImgs[6],
      ),
      Nominee(
        Category(7,'Best Picture'),
        'Vice',
        'Dede Gardner, Jeremy Kleiner, Adam McKay and Kevin Messick',
        oscarImgs[7],
      ),
      Nominee(
        Category(0,'Actor In A Leading Role'),
        'Christian Bale',
        'Vice',
        oscarImgs[8],
      ),
      Nominee(
        Category(0,'Actor In A Leading Role'),
        'Bradley Cooper',
        'A Star Is Born',
        oscarImgs[9],
      ),
      Nominee(
        Category(0,'Actor In A Leading Role'),
        'Willem Dafoe',
        'At Eternity\'s Gate',
        oscarImgs[10],
      ),
      Nominee(
        Category(0,'Actor In A Leading Role'),
        'Rami Malek',
        'Bohemian Rhapsody',
        oscarImgs[11],
      ),
      Nominee(
        Category(0,'Actor In A Leading Role'),
        'Viggo Mortensen',
        'Green Book',
        oscarImgs[12],
      ),
      Nominee(
        Category(0,'Actress In A Leading Role'),
        'Yalitza Aparicio',
        'Roma',
        oscarImgs[13],
      ),
      Nominee(
        Category(0,'Actress In A Leading Role'),
        'Glenn Close',
        'The Wife',
        oscarImgs[14],
      ),
      Nominee(
        Category(0,'Actress In A Leading Role'),
        'Olivia Colamn',
        'The Favourite',
        oscarImgs[15],
      ),
      Nominee(
        Category(0,'Actress In A Leading Role'),
        'Lady Gaga',
        'A Star Is Born',
        oscarImgs[16],
      ),
      Nominee(
        Category(0,'Actress In A Leading Role'),
        'Melissa McCarthy',
        'Can You Ever Forgive me?',
        oscarImgs[17],
      ),
      Nominee(
        Category(0,'Actor In A Supporting Role'),
        'Mahershala Ali',
        'Green Book',
        oscarImgs[18],
      ),
      Nominee(
        Category(0,'Actor In A Supporting Role'),
        'Adam Driver',
        'BlacKkKlansman',
        oscarImgs[19],
      ),
      Nominee(
        Category(0,'Actor In A Supporting Role'),
        'Sam Elliott',
        'A Star Is Born',
        oscarImgs[20],
      ),
      Nominee(
        Category(0,'Actor In A Supporting Role'),
        'Richard E. Grant',
        'Can You Ever Forgive Me?',
        oscarImgs[21],
      ),
      Nominee(
        Category(0,'Actor In A Supporting Role'),
        'Sam Rockwell',
        'Vice',
        oscarImgs[22],
      ),
      Nominee(
        Category(0,'Actress In A Supporting Role'),
        'Amy Adans',
        'Vice',
        oscarImgs[23],
      ),
      Nominee(
        Category(0,'Actress In A Supporting Role'),
        'Marina de Tavira',
        'Roma',
        oscarImgs[24],
      ),
      Nominee(
        Category(0,'Actress In A Supporting Role'),
        'Regina King',
        'If Beale Street Could Talk',
        oscarImgs[25],
      ),
      Nominee(
        Category(0,'Actress In A Supporting Role'),
        'Emma Stone',
        'The Favourite',
        oscarImgs[26],
      ),
      Nominee(
        Category(0,'Actress In A Supporting Role'),
        'Rachel Weisz',
        'The Favourite',
        oscarImgs[27],
      ),
      Nominee(
        Category(0,'Animated Feature Film'),
        'Incredibles 2',
        'Brad Bird, John Walker and Nicole Paradis Grindle',
        oscarImgs[28],
      ),
      Nominee(
        Category(0,'Animated Feature Film'),
        'Isle Of Dogs',
        'Wes Anderson, Scott Rudin, Steven Rales and Jeremy Dawson',
        oscarImgs[29],
      ),
      Nominee(
        Category(0,'Animated Feature Film'),
        'Mirai',
        'Mamoru Hosoda and Yuichiro Saito',
        oscarImgs[30],
      ),
      Nominee(
        Category(0,'Animated Feature Film'),
        'Ralph Breaks The Internet',
        'Rich Moore, Phil Johnston and Clark Spencer',
        oscarImgs[31],
      ),
      Nominee(
        Category(0,'Animated Feature Film'),
        'Spider-Man: Into The Spider-Verse',
        'Bob Persichetti, Peter Ramsey, Rodney Rothman, Phil Lord and Christopher Miller',
        oscarImgs[32],
      ),
      Nominee(
        Category(0,'Cinematography'),
        'Cold War',
        'Łukasz Żal',
        oscarImgs[33],
      ),
      Nominee(
        Category(0,'Cinematography'),
        'The Favourite',
        'Robbie Ryan',
        oscarImgs[3],
      ),
      Nominee(
        Category(0,'Cinematography'),
        'Never Look Away',
        'Caleb Deschanel',
        oscarImgs[34],
      ),
      Nominee(
        Category(0,'Cinematography'),
        'Roma',
        'Alfonso Cuarón',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Cinematography'),
        'A Star Is Born',
        'Matthew Libatique',
        oscarImgs[6],
      ),
      Nominee(
        Category(0,'Costume Design'),
        'The Ballad of Buster Scruggs',
        'Mary Zophres',
        oscarImgs[35],
      ),
      Nominee(
        Category(0,'Costume Design'),
        'Black Panther',
        'Ruth Carter',
        oscarImgs[36],
      ),
      Nominee(
        Category(0,'Costume Design'),
        'The Favourite',
        'Sandy Powell',
        oscarImgs[37],
      ),
      Nominee(
        Category(0,'Costume Design'),
        'Mary Poppins Returns',
        'Sandy Powell',
        oscarImgs[38],
      ),
      Nominee(
        Category(0,'Costume Design'),
        'Mary Queen of Scots',
        'Alexandra Byrne',
        oscarImgs[39],
      ),
      Nominee(
        Category(0,'Directing'),
        'BlacKkKlansman',
        'Spike Lee',
        oscarImgs[1],
      ),
      Nominee(
        Category(0,'Directing'),
        'Cold War',
        'Paweł Pawlikowski',
        oscarImgs[33],
      ),
      Nominee(
        Category(0,'Directing'),
        'The Favourite',
        'Yorgos Lanthimos',
        oscarImgs[3],
      ),
      Nominee(
        Category(0,'Directing'),
        'Roma',
        'Alfonso Cuarón',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Directing'),
        'Vice',
        'Adam McKay',
        oscarImgs[7],
      ),
      Nominee(
        Category(0,'Documentary (Feature)'),
        'Free Solo',
        'Elizabeth Chai Vasarhelyi, Jimmy Chin, Evan Hayes and Shannon Dill',
        oscarImgs[40],
      ),
      Nominee(
        Category(0,'Documentary (Feature)'),
        'Hale Country This Morning, This Evening',
        'RaMell Ross, Joslyn Barnes and Su Kim',
        oscarImgs[41],
      ),
      Nominee(
        Category(0,'Documentary (Feature)'),
        'Minding the Gap',
        'Bing Liu and Diane Quon',
        oscarImgs[42],
      ),
      Nominee(
        Category(0,'Documentary (Feature)'),
        'Of Fathers and Sons',
        'Talal Derki, Ansgar Frerich, Eva Kemme and Tobias N. Siebert',
        oscarImgs[43],
      ),
      Nominee(
        Category(0,'Documentary (Feature)'),
        'RBG',
        'Betsy West and Julie Cohen',
        oscarImgs[44],
      ),
      Nominee(
        Category(0,'Documentary (Short Subject)'),
        'Black Sheep',
        'Ed Perkins and Jonathan Chinn',
        oscarImgs[45],
      ),
      Nominee(
        Category(0,'Documentary (Short Subject)'),
        'End Game',
        'Rob Epstein and Jeffrey Friedman',
        oscarImgs[46],
      ),
      Nominee(
        Category(0,'Documentary (Short Subject)'),
        'Lifeboat',
        'Skye Fitzgerald and Bryn Mooser',
        oscarImgs[47],
      ),
      Nominee(
        Category(0,'Documentary (Short Subject)'),
        'A Night at the Garden',
        'Marshall Curry',
        oscarImgs[48],
      ),
      Nominee(
        Category(0,'Documentary (Short Subject)'),
        'Period. End of Sentence.',
        'Rayka Zehtabchi and Melissa Berton',
        oscarImgs[49],
      ),
      Nominee(
        Category(0,'Film Editing'),
        'BlacKkKlansman',
        'Barry Alexander Brown',
        oscarImgs[1],
      ),
      Nominee(
        Category(0,'Film Editing'),
        'Bohemian Rhapsody',
        'John Ottman',
        oscarImgs[2],
      ),
      Nominee(
        Category(0,'Film Editing'),
        'The Favourite',
        'Yorgos Mavropsaridis',
        oscarImgs[3],
      ),
      Nominee(
        Category(0,'Film Editing'),
        'Green Book',
        'Patrick J. Don Vito',
        oscarImgs[4],
      ),
      Nominee(
        Category(0,'Film Editing'),
        'Vice',
        'Hank Corwin',
        oscarImgs[7],
      ),
      Nominee(
        Category(0,'Foreign Language Film'),
        'Capernaum',
        'Lebanon; Nadine Labaki',
        oscarImgs[50],
      ),
      Nominee(
        Category(0,'Foreign Language Film'),
        'Cold War',
        'Poland; Paweł Pawlikowski',
        oscarImgs[33],
      ),
      Nominee(
        Category(0,'Foreign Language Film'),
        'Never Look Away',
        'Germany; Florian Henckel von Donnersmarck',
        oscarImgs[34],
      ),
      Nominee(
        Category(0,'Foreign Language Film'),
        'Roma',
        'Mexico; Alfonso Cuarón',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Foreign Language Film'),
        'Shoplifters',
        'Japan; Hirokazu Kore-eda',
        oscarImgs[51],
      ),
      Nominee(
        Category(0,'Makeup and Hairstyling'),
        'Border',
        'Göran Lundström and Pamela Goldammer',
        oscarImgs[52],
      ),
      Nominee(
        Category(0,'Makeup and Hairstyling'),
        'Mary Queen of Scots',
        'Jenny Shircore, Marc Pilcher and Jessica Brooks',
        oscarImgs[53],
      ),
      Nominee(
        Category(0,'Makeup and Hairstyling'),
        'Vice',
        'Greg Cannom, Kate Biscoe and Patricia DeHaney',
        oscarImgs[54],
      ),
      Nominee(
        Category(0,'Music (Original Score)'),
        'Blank Panther',
        'Ludwig Goransson',
        oscarImgs[0],
      ),
      Nominee(
        Category(0,'Music (Original Score)'),
        'BlacKkKlansman',
        'Terence Blanchard',
        oscarImgs[1],
      ),
      Nominee(
        Category(0,'Music (Original Score)'),
        'If Beale Street Could Talk',
        'Nicholas Britell',
        oscarImgs[55],
      ),
      Nominee(
        Category(0,'Music (Original Score)'),
        'Isle of Dogs',
        'Alexandre Desplat',
        oscarImgs[29],
      ),
      Nominee(
        Category(0,'Music (Original Score)'),
        'Mary Poppins Returns',
        'Marc Shaiman',
        oscarImgs[56],
      ),
      Nominee(
        Category(0,'Music (Original Song)'),
        '"All The Stars" from Black Panther',
        'Music by Mark Spears, Kendrick Lamar Duckworth and Anthony Tiffith; Lyric by Kendrick Lamar Duckworth, Anthony Tiffith and Solana Rowe',
        oscarImgs[0],
      ),
      Nominee(
        Category(0,'Music (Original Song)'),
        '"I\'ll Fight" from RBG',
        'Music and Lyric by Diane Warren',
        oscarImgs[44],
      ),
      Nominee(
        Category(0,'Music (Original Song)'),
        '"The Place Where Lost Things Go" from Mary Poppins Returns',
        'Music by Marc Shaiman; Lyric by Scott Wittman and Marc Shaiman',
        oscarImgs[56],
      ),
      Nominee(
        Category(0,'Music (Original Song)'),
        '"Shallow" from A Star Is Born',
        'Music and Lyric by Lady Gaga, Mark Ronson, Anthony Rossomando and Andrew Wyatt',
        oscarImgs[6],
      ),
      Nominee(
        Category(0,'Music (Original Song)'),
        '"When A Cowboy Trades His Spurs For Wings" from The Ballad of Buster Scruggs',
        'Music and Lyric by David Rawlings and Gillian Welch',
        oscarImgs[57],
    ),
      Nominee(
        Category(0,'Production Design'),
        'Black Panther',
        'Hannah Beachler (Production Design); Jay Hart (Set Decoration)',
        oscarImgs[0],
      ),
      Nominee(
        Category(0,'Production Design'),
        'The Favourite',
        'Fiona Crombie (Production Design); Alice Felton (Set Decoration)',
        oscarImgs[3],
      ),
      Nominee(
        Category(0,'Production Design'),
        'First Man',
        'Nathan Crowley (Production Design); Kathy Lucas (Set Decoration)',
        oscarImgs[58],
      ),
      Nominee(
        Category(0,'Production Design'),
        'Mary Poppins Returns',
        'John Myhre (Production Design); Gordon Sim (Set Decoration)',
        oscarImgs[57],
      ),
      Nominee(
        Category(0,'Production Design'),
        'Roma',
        'Eugenio Caballero (Production Design); Bárbara Enríquez (Set Decoration)',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Short Film (Animated)'),
        'Animal Behaviour',
        'Alison Snowden and David Fine',
        oscarImgs[59],
      ),
      Nominee(
        Category(0,'Short Film (Animated)'),
        'Bao',
        'Domee Shi and Becky Neiman-Cobb',
        oscarImgs[60],
      ),
      Nominee(
        Category(0,'Short Film (Animated)'),
        'Late Afternoon',
        'Louise Bagnall and Nuria González Blanco',
        oscarImgs[61],
      ),
      Nominee(
        Category(0,'Short Film (Animated)'),
        'One Small Step',
        'Andrew Chesworth and Bobby Pontillas',
        oscarImgs[62],
      ),
     Nominee(
        Category(0,'Short Film (Animated)'),
        'Weekends',
        'Trevor Jimenez',
        oscarImgs[63],
      ),
      Nominee(
        Category(0,'Short Film (Live Action)'),
        'Detainment',
        'Vincent Lambe and Darren Mahon',
        oscarImgs[64],
      ),
      Nominee(
        Category(0,'Short Film (Live Action)'),
        'Fauve',
        'Jeremy Comte and Maria Gracia Turgeon',
        oscarImgs[65],
      ),
      Nominee(
        Category(0,'Short Film (Live Action)'),
        'Marguerite',
        'Marianne Farley and Marie-Hélène Panisset',
        oscarImgs[66],
      ),
      Nominee(
        Category(0,'Short Film (Live Action)'),
        'Mother',
        'Rodrigo Sorogoyen and María del Puy Alvarado',
        oscarImgs[67],
      ),
      Nominee(
        Category(0,'Short Film (Live Action)'),
        'Skin',
        'Guy Nattiv and Jaime Ray Newman',
        oscarImgs[68],
      ),
      Nominee(
        Category(0,'Sound Editing'),
        'Black Panther',
        'Benjamin A. Burtt and Steve Boeddeker',
        oscarImgs[0],
      ),
      Nominee(
        Category(0,'Sound Editing'),
        'Bohemian Rhapsody',
        'John Warhurst and Nina Hartstone',
        oscarImgs[2],
      ),
      Nominee(
        Category(0,'Sound Editing'),
        'First Man',
        'Ai-Ling Lee and Mildred Iatrou Morgan',
        oscarImgs[58],
      ),
      Nominee(
        Category(0,'Sound Editing'),
        'A Quiet Place',
        'Ethan Van der Ryn and Erik Aadahl',
        oscarImgs[69],
      ),
      Nominee(
        Category(0,'Sound Editing'),
        'Roma',
        'Sergio Díaz and Skip Lievsay',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Sound Mixing'),
        'Black Panther',
        'Steve Boeddeker, Brandon Proctor and Peter Devlin',
        oscarImgs[0],
      ),
      Nominee(
        Category(0,'Sound Mixing'),
        'Bohemian Rhapsody',
        'Paul Massey, Tim Cavagin and John Casali',
        oscarImgs[2],
      ),
      Nominee(
        Category(0,'Sound Mixing'),
        'First Man',
        'Jon Taylor, Frank A. Montaño, Ai-Ling Lee and Mary H. Ellis',
        oscarImgs[58],
      ),
      Nominee(
        Category(0,'Sound Mixing'),
        'Roma',
        'Skip Lievsay, Craig Henighan and José Antonio García',
        oscarImgs[5],
      ),
      Nominee(
        Category(0,'Sound Mixing'),
        'A Star Is Born',
        'Tom Ozanich, Dean Zupancic, Jason Ruder and Steve Morrow',
        oscarImgs[6],
      ),
      Nominee(
        Category(0,'Visual Effects'),
        'Avengers: Infinity War',
        'Dan DeLeeuw, Kelly Port, Russell Earl and Dan Sudick',
        oscarImgs[70],
      ),
      Nominee(
        Category(0,'Visual Effects'),
        'Christopher Robin',
        'Christopher Lawrence, Michael Eames, Theo Jones and Chris Corbould',
        oscarImgs[71],
      ),
      Nominee(
        Category(0,'Visual Effects'),
        'First Man',
        'Paul Lambert, Ian Hunter, Tristan Myles and J.D. Schwalm',
        oscarImgs[58],
      ),
      Nominee(
        Category(0,'Visual Effects'),
        'Ready Player One',
        'Roger Guyett, Grady Cofer, Matthew E. Butler and David Shirk',
        oscarImgs[72],
      ),
      Nominee(
        Category(0,'Visual Effects'),
        'Solo: A Star Wars Story',
        'Rob Bredow, Patrick Tubach, Neal Scanlan and Dominic Tuohy',
        oscarImgs[73],
      ),
      Nominee(
        Category(0,'Writing (Adapted Screenplay)'),
        'The Ballad of Buster Scruggs',
        'Written by Joel Coen & Ethan Coen',
        oscarImgs[57],
      ),
      Nominee(
        Category(0,'Writing (Adapted Screenplay)'),
        'BlacKkKlansman',
        'Written by Charlie Wachtel & David Rabinowitz and Kevin Willmott & Spike Lee',
        oscarImgs[1],
      ),
      Nominee(
        Category(0,'Writing (Adapted Screenplay)'),
        'Can You Ever Forgive Me?',
        'Screenplay by Nicole Holofcener and Jeff Whitty',
        oscarImgs[74],
      ),
      Nominee(
        Category(0,'Writing (Adapted Screenplay)'),
        'If Beale Street Could Talk',
        'Written for the screen by Barry Jenkins',
        oscarImgs[55],
      ),
      Nominee(
        Category(0,'Writing (Adapted Screenplay)'),
        'A Star Is Born',
        'Screenplay by Eric Roth and Bradley Cooper & Will Fetters',
        oscarImgs[6],
      ),
      Nominee(
        Category(0,'Writing (Original Screenplay)'),
        'The Favourite',
        'Written by Deborah Davis and Tony McNamara',
        oscarImgs[3],
      ),
      Nominee(
        Category(0,'Writing (Original Screenplay)'),
        'First Reformed',
        'Written by Paul Schrader',
        oscarImgs[75],
      ),
       Nominee(
        Category(0,'Writing (Original Screenplay)'),
        'Green Book',
        'Written by Nick Vallelonga, Brian Currie, Peter Farrelly',
        oscarImgs[4],
      ),
      Nominee(
        Category(0,'Writing (Original Screenplay)'),
        'Roma',
        'Written by Alfonso Cuarón',
        oscarImgs[5],
      ),
       Nominee(
        Category(0,'Writing (Original Screenplay)'),
        'Vice',
        'Written by Adam McKay',
        oscarImgs[7],
      ),
    ];
    if (category.name == "all") {
      return allNominees;
    } else {
      return allNominees.where((Nominee nom) {
        return nom.category.name == category.name;
      }).toList();
    }
  }

  static List<String> oscarImgs = ["https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134409/e0e0b612a16885b02848f38ead529fffaed84d06d9651396218a2515a73ea823-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134511/d4da934ee889ec689de327d3bb00e77d7dbe1dcc89854f6a9aebf09c328c9e3d-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134643/49fdf0f255865e709db8675c548860a8999e339e78d7d2f8b7131c84e766c7eb-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143705/266f9495ce8222ac9ade5f970201bfe4b0cc0ea9f5c017e0fa69d993264d5609-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140724/9fbd79d3251cfae53a4ee13026e016d6ab4e8f1f3d81a6a2eaceba0dabac3333-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07132442/8207ba86b0560820430f4ec397eb4b8eb6818babf948ed57dd5a887b19d57de5-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07145515/60cd9d00078eb2b91bb56b1a2577cebd7c6c26ab2c48394bd758991c7515543c-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15094113/ee9889585a1dfe479b01ebcfdba827f07f8927cbabdf51cde39006b17e8fd8be-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15094313/7da8486d5c486efa235235d02904101e7d4e987fc2d3dcaf16cfb8afba7cc2f0-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15094455/97160890323ed90b348df478abaf57314f411b5c8c1300dadacd2f8e9c8b645b-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15110625/ffbe4352b922b8c14ca617a8490f53cb50eca68db4af94eaef5cc7d2c92b0af2-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15110825/89fecea20896ffd12ab4b17bed3299e4ca8fda805a78e805069763a13af6cf6a-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15124713/25c3182af9147cef5392c27b54e000f6c2782170e2658f4110a668c2f87affec-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15125621/14d80eeb77f73f617944e8241ce4fff33a5628e3a5c51725ff1147423bcf620a-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15125841/622dc78a2eef876be7ea7cbc0d8673f82161e46259bafde75233bf067dd06af9-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15133102/853534e709ee1c3d51cbb1ab9be62b4b0ce37526b70782a038ea58e67e2413fd-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15133220/02b25c0bc7563794a2dee84f31778df90df2e962fd20494a5938c94021f89835-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15112946/52a709e3be7d08d95a30a5b8cb12ed2e942ee5f0a232abd5cb7b9ec08d17cd4d-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15113553/d575beca63023f0ba904f1c1282277e9d712a85da769a978717908624c8738ee-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15113745/76592b00b1fd6012b220f8f0a7043f1937f981c929d20e23985c831b496656b5-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15114031/d0ad52bd56346e7baba04146c1f40f402a1fe7883eece7947982135514b40aa1-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15115007/28377af02f644767226e1d9e22a92c0bac8cbf472019d420b3c27a4ca3e7a641-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15134248/42ed4dc9e0d3b038df66bf3abe64afd15ab4ef539a6fccd9a3507247de803bdf-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/17110206/2ab71ea215ec081570f80e3505862db5801fb1f60f077411335ec2a33d54973a-370x492.jpeg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15135545/658e4cefa9f02cc3fa8dc2c2ceab6ff44c1d7070348a7b22d3e393a6d9282b86-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15142704/3d6a418d324c5dbfa6a306c587640af7246c5543a5a7604247ef16f081aecaa4-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15142808/9168d54b531349d1e44f5ec10ef2d8a7fcb3542e190d0a0b3a82bdc1a502877f-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07101116/0477f19802ef4addb6de709967564a0cdb369947fa049a6380d6ee21a5b77f0c-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07101211/0fc3980c2d24ab2669fa2129822c9ae1818e832ae6f59bc693bdc15c738e50e1-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07102606/51b048787995b86a336388439e30c9f09854dcb122b300c272ac325ede2dd0bc-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07102910/ae194687429f6bb2c3cdddd3d0401915933a7018d7d9c0dc41fe25ef7b12aeb1-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07103329/d23df439f5ae3e828cb06b75565d69d56d5ce6988a735c74c872bd984221f98a-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115651/fb12cc341598cfd679dd85f94e27a0e5d68e8362aa98914fef159b32bfde327a-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115759/2622f9e2dbbedd57cb6531440a2183d775b4b9eab666027bc2dc1d693cdeb226-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/22052915/4828b22d04ee4c574ce68cdd315bed87674619a0f211668f90cc580c092ce74a-370x492.jpeg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15140830/f176b5606e36ed65fc0932e8421df29d785e3c936cc05d42c5afbd73cace1cdb-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15143101/517a65f2aaae668ba5644a7f8076937d0a99b54c60315655850264289ce9daef-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15144051/d62f42d995f0ae000bf82113b0a5515915d51990dec16217507d6ef4e8f8232a-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15144247/585a2cf0d69dc7097fcb0f0788ddc2363daafc301112f88ae5e030cdd8c2e919-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07110842/65a35b0ec1f0b23dbd6b05764e72d041f47a506f138732ca7e6bce69dd8de845-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07110948/a3a74b6aeb22c1db24290222e34434abc92e16504ca3f505553119fb31eac0ae-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07111043/bc48fecbc7147be9f92f59fa4e7870115f7b452936269b2443e27a46c346f273-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07111148/f7185c63fc3fe98f72ef7a167a9cadbfed808fcdb6244cb09d5fe34f66d9a751-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07111336/9588ee9645340f543ddf8f92a4bca741053304eed3532687eca9187c7a64c201-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07113709/b638a5f27ca38a103fe792ea40ac3a1fcbe14e4c5e40476db1ef3c8125047b5f-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07113755/46fed8fde264eec37ac6b2d33bc214d87cfa25cc7674166c8b7f088b889bdf9c-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07114048/c513ee6561f588528222aa81a68f8cccc5afd12c4905604663be77e1f783e006-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/09094616/342cd311e2de966fb300cf3c45dd9201b81e7abbd8e144fd35ccb662d4400856-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07114631/50d650e36d061d12f203925fdd45d8d744e6d64a4458a2ca3af46fe7c07fc93d-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115448/cff07232745a6db5f0ef00e3cc8b88815e5a6d90e7641f1f4aa2bf4ff132aa1e-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07120028/1f162b1977c22ac76f07d618c5a1770f38b9b322f3b0fc397629468ebd84739c-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15145546/9d07a5a274ac5d2bc457c807600b06be12fa642aec805e010f85e019d33e54d2-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15145633/0b340711e2060afb562112719b258966fb71866bb50e7f6e15317d42b7479c64-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15150032/2eab8a0e90897d391b514037641dda725587847623cb141b9e43db8695ad8898-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140938/4de67af328d8eee863f588a16b30804c40fe3f0f3ce4b7ba48aeb1da7ea8abba-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07141601/453bd9b67b86cdbe57a9908bd2f7497739683880de7b64615723d9830666c768-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143435/bdacdc4921dd1da792a73a0062c4fa5ebf93d2721684132408848d16fd5a5023-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140414/425b9493f58573fbe8c00917fec47d5fb12532387fa488501b9d429f5f0c0d8c-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07104537/e38854238e2d43b760ebb09da389dfe28ef347ac541d42637cb55901bf0cad00-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07104722/9109263791f2b7e812ce656dcd3a596f59869290ba45e25a1f3f3c77502100ba-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07105107/25547de27a8155b01a4de15d768ef768e94779719ea019bd3ee7cfc940a5c108-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07105706/67f8417017da70b4da1822f8bec5dd0e8dfe4463f2f00cbd545902e37fd96bcd-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07110210/5a80636b60393f6f4408acdd16f53a47d47f3f0caf8f363650a18c8811846110-370x492.png"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07120434/0587557f907f333ce48c8a79b826fc808a9f96dcef0725de029789d9d892c960-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07120521/31659572fef0e0a01b583378c97e9b5121358e1c71f86406f3bc12709659a55b-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07120639/fc0b9db386fee14970fe5f420e60a823459ca1b4e418ba038cb4dcb97229791c-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/17110147/07a7f171594fd002582b631aa6b46a1d7ac3661d9fff584ebde82eb5d830e4cc-370x492.jpeg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07120726/336d2dab17f42ca4de36c3f38b92f97d6e33e873587cac252c4150cf67486588-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07130353/69c67d086f4a3cf7bd27b0a560d39dc5f20b9d767a8a9076a0eb29ad08c0a6ee-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07133256/0d91a07ac52bf1acffa1b8c0fec81b042fec2ae6a8a07881a403b68ad8cbe726-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07135115/16539bcc574787d13053ca681e18a0393622134729b88bf280341091fe48b504-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07142706/976a1dfecebb868db21c0337ce1957cd930cab0e964442dfc6dc14f5369fa1ed-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07142819/1bcf0cc56f606430e1a0fd117332c5cf6099e86c95c6263429926882889f3ebc-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07135007/e5328bd91c7b6875124f6728c0e9b2870cb3650e2ab8e67b2ee668d170ea3e44-370x492.jpg"
, "https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140518/3c1b73f914d35a8573a4971df2b82fabf0dd457edc6b951ab6f5e1a3b152e896-370x492.jpg"];
}

class CategoryRespository {

  static List<Category> loadCategories() {
    var allCategories = <Category> [
      Category(10, 'Best Picture'),
      Category(10, 'Actor In A Leading Role'),
      Category(10, 'Actress In A Leading Role'),
      Category(8, 'Actor In A Supporting Role'),
      Category(8, 'Actress In A Supporting Role'),
      Category(8, 'Animated Feature Film'),
      Category(6, 'Cinematography'),
      Category(6, 'Costume Design'),
      Category(6, 'Directing'),
      Category(6, 'Documentary (Feature)'),
      Category(6, 'Documentary (Short Subject)'),
      Category(6, 'Film Editing'),
      Category(6, 'Foreign Language Film'),
      Category(6, 'Makeup and Hairstyling'),
      Category(5, 'Music (Original Score)'),
      Category(5, 'Music (Original Song'),
      Category(5, 'Production Design'),
      Category(3, 'Short Film (Animated)'),
      Category(3, 'Short Film (Live Action)'),
      Category(3, 'Sounding Editing'),
      Category(2, 'Sound Mixing'),
      Category(2, 'Visual Effects'),
      Category(1, 'Writing (Adapted Screenplay)'),
      Category(1, 'Writing (Original Screenplay)'),
       ];
      return allCategories;
  }
}