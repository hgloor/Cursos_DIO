CREATE CONSTRAINT genre_name IF NOT EXISTS FOR (g:Genre) REQUIRE g.name IS UNIQUE;
CREATE CONSTRAINT movie_title IF NOT EXISTS FOR (m:Movie) REQUIRE m.title IS UNIQUE;
CREATE CONSTRAINT serie_episode_name IF NOT EXISTS FOR (s:Series) REQUIRE (s.title, s.episode_title) IS NODE KEY;
CREATE CONSTRAINT serie_season_episode IF NOT EXISTS FOR (s:Series) REQUIRE (s.title, s.season, s.episode) IS NODE KEY;
CREATE CONSTRAINT director_name IF NOT EXISTS FOR (d:Director) REQUIRE d.name IS UNIQUE;
CREATE CONSTRAINT actor_name IF NOT EXISTS FOR (a:Actor) REQUIRE a.name IS UNIQUE;
CREATE CONSTRAINT user_id IF NOT EXISTS FOR (u:User) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT user_name_date IF NOT EXISTS FOR (u:User) REQUIRE (u.name, u.born_date) IS NODE KEY;

// Criar nós Genre
CREATE (g1:Genre {name: 'Drama'});
CREATE (g2:Genre {name: 'Ação'});
CREATE (g3:Genre {name: 'Comédia'});
CREATE (g4:Genre {name: 'Aventura'});
CREATE (g5:Genre {name: 'Animação'});
CREATE (g6:Genre {name: 'Terror'});
CREATE (g7:Genre {name: 'Romance'});
CREATE (g8:Genre {name: 'Crime'});
CREATE (g9:Genre {name: 'Ficção Científica'});
CREATE (g10:Genre {name: 'Documentário'});

// Criar nós Movie
CREATE (m1:Movie {title: 'The Shawshank Redemption', year: 1994});
CREATE (m2:Movie {title: 'Avengers: Endgame', year: 2019});
CREATE (m3:Movie {title: 'Superbad', year: 2007});
CREATE (m4:Movie {title: 'Jurassic Park', year: 1993});
CREATE (m5:Movie {title: 'Spirited Away', year: 2001});
CREATE (m6:Movie {title: 'The Conjuring', year: 2013});
CREATE (m7:Movie {title: 'Titanic', year: 1997});
CREATE (m8:Movie {title: 'The Godfather', year: 1972});
CREATE (m9:Movie {title: 'Inception', year: 2010});
CREATE (m10:Movie {title: ""Won't You Be My Neighbor?"", year: 2018});

// Criar nós Serie com episódios (primeiro e último por temporada)
CREATE (s001e0101:Series {title: 'Breaking Bad', episode_title: 'Pilot', season: 1, episode: 1, year: 2008});
CREATE (s001e0516:Series {title: 'Breaking Bad', episode_title: 'Felina', season: 5, episode: 16, year: 2013});
CREATE (s002e0101:Series {title: 'The Boys', episode_title: 'The Name of the Game', season: 1, episode: 1, year: 2019});
CREATE (s002e0408:Series {title: 'The Boys', episode_title: 'Season Four Finale', season: 4, episode: 8, year: 2024});
CREATE (s003e0101:Series {title: 'The Office', episode_title: 'Pilot', season: 1, episode: 1, year: 2005});
CREATE (s003e0925:Series {title: 'The Office', episode_title: 'Finale', season: 9, episode: 25, year: 2013});
CREATE (s004e0101:Series {title: 'The Last of Us', episode_title: ""When You're Lost in the Darkness"", season: 1, episode: 1, year: 2023});
CREATE (s004e0109:Series {title: 'The Last of Us', episode_title: 'Look for the Light', season: 1, episode: 9, year: 2023});
CREATE (s005e0101:Series {title: 'Rick and Morty', episode_title: 'Pilot', season: 1, episode: 1, year: 2013});
CREATE (s005e0710:Series {title: 'Rick and Morty', episode_title: 'Fear No Mort', season: 7, episode: 10, year: 2023});
CREATE (s006e0101:Series {title: 'Stranger Things', episode_title: 'Chapter One: The Vanishing of Will Byers', season: 1, episode: 1, year: 2016});
CREATE (s006e0409:Series {title: 'Stranger Things', episode_title: 'Chapter Nine: The Piggyback', season: 4, episode: 9, year: 2022});
CREATE (s007e0101:Series {title: 'Bridgerton', episode_title: 'Diamond of the First Water', season: 1, episode: 1, year: 2020});
CREATE (s007e0308:Series {title: 'Bridgerton', episode_title: 'Into the Light', season: 3, episode: 8, year: 2024});
CREATE (s008e0101:Series {title: 'Narcos', episode_title: 'Descenso', season: 1, episode: 1, year: 2015});
CREATE (s008e0310:Series {title: 'Narcos', episode_title: 'Sin Nombre', season: 3, episode: 10, year: 2017});
CREATE (s009e0101:Series {title: 'The Mandalorian', episode_title: 'Chapter 1: The Mandalorian', season: 1, episode: 1, year: 2019});
CREATE (s009e0308:Series {title: 'The Mandalorian', episode_title: 'Chapter 24: The Return', season: 3, episode: 8, year: 2023});
CREATE (s010e0101:Series {title: 'Our Planet', episode_title: 'One Planet', season: 1, episode: 1, year: 2019});
CREATE (s010e0108:Series {title: 'Our Planet', episode_title: 'From Pole to Pole', season: 1, episode: 8, year: 2019});

// Criar nós Director
CREATE (d1:Director {name: 'Frank Darabont', born_date: '28/01/1959'});
CREATE (d2:Director {name: 'Anthony Russo', born_date: '03/02/1970'});
CREATE (d3:Director {name: 'Joe Russo', born_date: '18/07/1971'});
CREATE (d4:Director {name: 'Greg Mottola', born_date: '11/07/1964'});
CREATE (d5:Director {name: 'Steven Spielberg', born_date: '18/12/1946'});
CREATE (d6:Director {name: 'Hayao Miyazaki', born_date: '05/01/1941'});
CREATE (d7:Director {name: 'James Wan', born_date: '26/02/1977'});
CREATE (d8:Director {name: 'James Cameron', born_date: '16/08/1954'});
CREATE (d9:Director {name: 'Francis Ford Coppola', born_date: '07/04/1939'});
CREATE (d10:Director {name: 'Christopher Nolan', born_date: '30/07/1970'});
CREATE (d11:Director {name: 'Morgan Neville', born_date: '10/10/1967'});
CREATE (d12:Director {name: 'Vince Gilligan', born_date: '10/02/1967'}); // Showrunner Breaking Bad
CREATE (d13:Director {name: 'Eric Kripke', born_date: '24/04/1974'});
CREATE (d14:Director {name: 'Greg Daniels', born_date: '13/06/1963'});
CREATE (d15:Director {name: 'Craig Mazin', born_date: '08/04/1971'});
CREATE (d16:Director {name: 'Dan Harmon', born_date: '03/01/1973'});
CREATE (d17:Director {name: 'Matt Duffer', born_date: '15/02/1984'});
CREATE (d18:Director {name: 'Ross Duffer', born_date: '15/02/1984'});
CREATE (d19:Director {name: 'Chris Van Dusen', born_date: '01/01/1977'});
CREATE (d20:Director {name: 'Chris Brancato', born_date: '24/07/1962'});
CREATE (d21:Director {name: 'Jon Favreau', born_date: '19/10/1966'});
CREATE (d22:Director {name: 'Alastair Fothergill', born_date: '10/04/1960'});

// Criar nós Actor
CREATE (a1:Actor {name: 'Tim Robbins', born_date: '16/10/1958'});
CREATE (a2:Actor {name: 'Morgan Freeman', born_date: '01/06/1937'});
CREATE (a3:Actor {name: 'Robert Downey Jr.', born_date: '04/04/1965'});
CREATE (a4:Actor {name: 'Scarlett Johansson', born_date: '22/11/1984'});
CREATE (a5:Actor {name: 'Jonah Hill', born_date: '20/12/1983'});
CREATE (a6:Actor {name: 'Emma Stone', born_date: '06/11/1988'});
CREATE (a7:Actor {name: 'Sam Neill', born_date: '14/09/1947'});
CREATE (a8:Actor {name: 'Laura Dern', born_date: '10/02/1967'});
CREATE (a9:Actor {name: 'Daveigh Chase', born_date: '24/07/1990'});
CREATE (a10:Actor {name: 'Suzanne Pleshette', born_date: '31/01/1937'});
CREATE (a11:Actor {name: 'Patrick Wilson', born_date: '03/07/1973'});
CREATE (a12:Actor {name: 'Vera Farmiga', born_date: '06/08/1973'});
CREATE (a13:Actor {name: 'Leonardo DiCaprio', born_date: '11/11/1974'});
CREATE (a14:Actor {name: 'Kate Winslet', born_date: '05/10/1975'});
CREATE (a15:Actor {name: 'Marlon Brando', born_date: '03/04/1924'});
CREATE (a16:Actor {name: 'Diane Keaton', born_date: '05/01/1946'});
CREATE (a17:Actor {name: 'Marion Cotillard', born_date: '30/09/1975'});
CREATE (a18:Actor {name: 'Bryan Cranston', born_date: '07/03/1956'});
CREATE (a19:Actor {name: 'Anna Gunn', born_date: '11/08/1968'});
CREATE (a20:Actor {name: 'Karl Urban', born_date: '07/06/1972'});
CREATE (a21:Actor {name: 'Erin Moriarty', born_date: '24/06/1994'});
CREATE (a22:Actor {name: 'Steve Carell', born_date: '16/08/1962'});
CREATE (a23:Actor {name: 'Jenna Fischer', born_date: '07/03/1974'});
CREATE (a24:Actor {name: 'Pedro Pascal', born_date: '02/04/1975'});
CREATE (a25:Actor {name: 'Bella Ramsey', born_date: '25/09/2003'});
CREATE (a26:Actor {name: 'Justin Roiland', born_date: '21/02/1980'});
CREATE (a27:Actor {name: 'Sarah Chalke', born_date: '27/08/1976'});
CREATE (a28:Actor {name: 'Finn Wolfhard', born_date: '23/12/2002'});
CREATE (a29:Actor {name: 'Millie Bobby Brown', born_date: '19/02/2004'});
CREATE (a30:Actor {name: 'Regé-Jean Page', born_date: '24/01/1988'});
CREATE (a31:Actor {name: 'Phoebe Dynevor', born_date: '17/04/1995'});
CREATE (a32:Actor {name: 'Wagner Moura', born_date: '27/06/1976'});
CREATE (a33:Actor {name: 'Stephanie Sigman', born_date: '28/02/1987'});
CREATE (a34:Actor {name: 'Gina Carano', born_date: '16/04/1982'});
CREATE (a35:Actor {name: 'David Attenborough', born_date: '08/05/1926'});

// Criar nós User
CREATE (u1001:User {id: '1001', name: 'Ana Clara Silva', born_date: '15/03/1968', sign_date: '22/07/2025', country: 'Brasil'});
CREATE (u1002:User {id: '1002', name: 'João Pedro Santos', born_date: '27/11/1992', sign_date: '18/02/2025', country: 'EUA'});
CREATE (u1003:User {id: '1003', name: 'Maria Eduarda Oliveira', born_date: '04/09/1981', sign_date: '30/10/2025', country: 'Brasil'});
CREATE (u1004:User {id: '1004', name: 'Lucas Gabriel Costa', born_date: '19/06/2003', sign_date: '05/04/2025', country: 'Brasil'});
CREATE (u1005:User {id: '1005', name: 'Beatriz Ferreira Lima', born_date: '08/12/1975', sign_date: '12/09/2025', country: 'EUA'});
CREATE (u1006:User {id: '1006', name: 'Gabriel Henrique Almeida', born_date: '30/01/1999', sign_date: '01/11/2025', country: 'Brasil'});
CREATE (u1007:User {id: '1007', name: 'Julia Mendes Rocha', born_date: '23/07/1987', sign_date: '27/05/2025', country: 'Brasil'});
CREATE (u1008:User {id: '1008', name: 'Enzo Miguel Barbosa', born_date: '11/04/2001', sign_date: '14/08/2025', country: 'EUA'});
CREATE (u1009:User {id: '1009', name: 'Laura Vitória Pereira', born_date: '06/10/1994', sign_date: '19/03/2025', country: 'Brasil'});
CREATE (u1010:User {id: '1010', name: 'Pedro Henrique Martins', born_date: '22/07/1971', sign_date: '03/06/2025', country: 'Brasil'});


// Relacionamentos Movie -> Genre, Actor -> Movie, Director -> Movie
MATCH (m:Movie {title: 'The Shawshank Redemption'}), (g:Genre {name: 'Drama'}), (a1:Actor {name: 'Tim Robbins'}), (a2:Actor {name: 'Morgan Freeman'}), (d:Director {name: 'Frank Darabont'})
CREATE (m)-[:IN_GENRE]->(g), (a1)-[:ACTED_IN {role: 'Andy Dufresne'}]->(m), (a2)-[:ACTED_IN {role: 'Ellis Boyd Redding'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'Avengers: Endgame'}), (g:Genre {name: 'Ação'}), (a3:Actor {name: 'Robert Downey Jr.'}), (a4:Actor {name: 'Scarlett Johansson'}), (d2:Director {name: 'Anthony Russo'}), (d3:Director {name: 'Joe Russo'})
CREATE (m)-[:IN_GENRE]->(g), (a3)-[:ACTED_IN {role: 'Tony Stark / Iron Man'}]->(m), (a4)-[:ACTED_IN {role: 'Natasha Romanoff / Black Widow'}]->(m), (d2)-[:DIRECTED]->(m), (d3)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'Superbad'}), (g:Genre {name: 'Comédia'}), (a5:Actor {name: 'Jonah Hill'}), (a6:Actor {name: 'Emma Stone'}), (d:Director {name: 'Greg Mottola'})
CREATE (m)-[:IN_GENRE]->(g), (a5)-[:ACTED_IN {role: 'Seth'}]->(m), (a6)-[:ACTED_IN {role: 'Jules'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'Jurassic Park'}), (g:Genre {name: 'Aventura'}), (a7:Actor {name: 'Sam Neill'}), (a8:Actor {name: 'Laura Dern'}), (d:Director {name: 'Steven Spielberg'})
CREATE (m)-[:IN_GENRE]->(g), (a7)-[:ACTED_IN {role: 'Dr. Alan Grant'}]->(m), (a8)-[:ACTED_IN {role: 'Dr. Ellie Sattler'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'Spirited Away'}), (g:Genre {name: 'Animação'}), (a9:Actor {name: 'Daveigh Chase'}), (a10:Actor {name: 'Suzanne Pleshette'}), (d:Director {name: 'Hayao Miyazaki'})
CREATE (m)-[:IN_GENRE]->(g), (a9)-[:ACTED_IN {role: 'Chihiro Ogino'}]->(m), (a10)-[:ACTED_IN {role: 'Yubaba / Zeniba'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'The Conjuring'}), (g:Genre {name: 'Terror'}), (a11:Actor {name: 'Patrick Wilson'}), (a12:Actor {name: 'Vera Farmiga'}), (d:Director {name: 'James Wan'})
CREATE (m)-[:IN_GENRE]->(g), (a11)-[:ACTED_IN {role: 'Ed Warren'}]->(m), (a12)-[:ACTED_IN {role: 'Lorraine Warren'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'Titanic'}), (g:Genre {name: 'Romance'}), (a13:Actor {name: 'Leonardo DiCaprio'}), (a14:Actor {name: 'Kate Winslet'}), (d:Director {name: 'James Cameron'})
CREATE (m)-[:IN_GENRE]->(g), (a13)-[:ACTED_IN {role: 'Jack Dawson'}]->(m), (a14)-[:ACTED_IN {role: 'Rose DeWitt Bukater'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'The Godfather'}), (g:Genre {name: 'Crime'}), (a15:Actor {name: 'Marlon Brando'}), (a16:Actor {name: 'Diane Keaton'}), (d:Director {name: 'Francis Ford Coppola'})
CREATE (m)-[:IN_GENRE]->(g), (a15)-[:ACTED_IN {role: 'Vito Corleone'}]->(m), (a16)-[:ACTED_IN {role: 'Kay Adams-Corleone'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: 'Inception'}), (g:Genre {name: 'Ficção Científica'}), (a13:Actor {name: 'Leonardo DiCaprio'}), (a17:Actor {name: 'Marion Cotillard'}), (d:Director {name: 'Christopher Nolan'})
CREATE (m)-[:IN_GENRE]->(g), (a13)-[:ACTED_IN {role: 'Dom Cobb'}]->(m), (a17)-[:ACTED_IN {role: 'Mal'}]->(m), (d)-[:DIRECTED]->(m);

MATCH (m:Movie {title: ""Won't You Be My Neighbor?""}), (g:Genre {name: 'Documentário'}), (d:Director {name: 'Morgan Neville'})
CREATE (m)-[:IN_GENRE]->(g), (d)-[:DIRECTED]->(m);


// Relacionamentos Serie -> Genre, Actor -> Serie, Director -> Serie
MATCH (s:Series {title: 'Breaking Bad', episode_title: 'Pilot'}), (sl:Series {title: 'Breaking Bad', episode_title: 'Felina'}), (g:Genre {name: 'Drama'}), (a18:Actor {name: 'Bryan Cranston'}), (a19:Actor {name: 'Anna Gunn'}), (d:Director {name: 'Vince Gilligan'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a18)-[:ACTED_IN {role: 'Walter White'}]->(s), (a18)-[:ACTED_IN {role: 'Walter White'}]->(sl), (a19)-[:ACTED_IN {role: 'Skyler White'}]->(s), (a19)-[:ACTED_IN {role: 'Skyler White'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'The Boys', episode_title: 'The Name of the Game'}), (sl:Series {title: 'The Boys', episode_title: 'Season Four Finale'}), (g:Genre {name: 'Ação'}), (a20:Actor {name: 'Karl Urban'}), (a21:Actor {name: 'Erin Moriarty'}), (d:Director {name: 'Eric Kripke'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a20)-[:ACTED_IN {role: 'Billy Butcher'}]->(s), (a20)-[:ACTED_IN {role: 'Billy Butcher'}]->(sl), (a21)-[:ACTED_IN {role: 'Starlight / Annie January'}]->(s), (a21)-[:ACTED_IN {role: 'Starlight / Annie January'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'The Office', episode_title: 'Pilot'}), (sl:Series {title: 'The Office', episode_title: 'Finale'}), (g:Genre {name: 'Comédia'}), (a22:Actor {name: 'Steve Carell'}), (a23:Actor {name: 'Jenna Fischer'}), (d:Director {name: 'Greg Daniels'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a22)-[:ACTED_IN {role: 'Michael Scott'}]->(s), (a22)-[:ACTED_IN {role: 'Michael Scott'}]->(sl), (a23)-[:ACTED_IN {role: 'Pam Beesly'}]->(s), (a23)-[:ACTED_IN {role: 'Pam Beesly'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'The Last of Us', episode_title: ""When You're Lost in the Darkness""}), (sl:Series {title: 'The Last of Us', episode_title: 'Look for the Light'}), (g:Genre {name: 'Aventura'}), (a24:Actor {name: 'Pedro Pascal'}), (a25:Actor {name: 'Bella Ramsey'}), (d:Director {name: 'Craig Mazin'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a24)-[:ACTED_IN {role: 'Joel Miller'}]->(s), (a24)-[:ACTED_IN {role: 'Joel Miller'}]->(sl), (a25)-[:ACTED_IN {role: 'Ellie Williams'}]->(s), (a25)-[:ACTED_IN {role: 'Ellie Williams'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'Rick and Morty', episode_title: 'Pilot'}), (sl:Series {title: 'Rick and Morty', episode_title: 'Fear No Mort'}), (g:Genre {name: 'Animação'}), (a26:Actor {name: 'Justin Roiland'}), (a27:Actor {name: 'Sarah Chalke'}), (d:Director {name: 'Dan Harmon'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a26)-[:ACTED_IN {role: 'Rick Sanchez / Morty Smith'}]->(s), (a26)-[:ACTED_IN {role: 'Rick Sanchez / Morty Smith'}]->(sl), (a27)-[:ACTED_IN {role: 'Beth Smith'}]->(s), (a27)-[:ACTED_IN {role: 'Beth Smith'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'Stranger Things', episode_title: 'Chapter One: The Vanishing of Will Byers'}), (sl:Series {title: 'Stranger Things', episode_title: 'Chapter Nine: The Piggyback'}), (g:Genre {name: 'Terror'}), (a28:Actor {name: 'Finn Wolfhard'}), (a29:Actor {name: 'Millie Bobby Brown'}), (d17:Director {name: 'Matt Duffer'}), (d18:Director {name: 'Ross Duffer'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a28)-[:ACTED_IN {role: 'Mike Wheeler'}]->(s), (a28)-[:ACTED_IN {role: 'Mike Wheeler'}]->(sl), (a29)-[:ACTED_IN {role: 'Eleven / Jane Hopper'}]->(s), (a29)-[:ACTED_IN {role: 'Eleven / Jane Hopper'}]->(sl), (d17)-[:DIRECTED]->(s), (d17)-[:DIRECTED]->(sl), (d18)-[:DIRECTED]->(s), (d18)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'Bridgerton', episode_title: 'Diamond of the First Water'}), (sl:Series {title: 'Bridgerton', episode_title: 'Into the Light'}), (g:Genre {name: 'Romance'}), (a30:Actor {name: 'Regé-Jean Page'}), (a31:Actor {name: 'Phoebe Dynevor'}), (d:Director {name: 'Chris Van Dusen'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a30)-[:ACTED_IN {role: 'Simon Basset, Duke of Hastings'}]->(s), (a30)-[:ACTED_IN {role: 'Simon Basset, Duke of Hastings'}]->(sl), (a31)-[:ACTED_IN {role: 'Daphne Bridgerton'}]->(s), (a31)-[:ACTED_IN {role: 'Daphne Bridgerton'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'Narcos', episode_title: 'Descenso'}), (sl:Series {title: 'Narcos', episode_title: 'Sin Nombre'}), (g:Genre {name: 'Crime'}), (a32:Actor {name: 'Wagner Moura'}), (a33:Actor {name: 'Stephanie Sigman'}), (d:Director {name: 'Chris Brancato'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a32)-[:ACTED_IN {role: 'Pablo Escobar'}]->(s), (a32)-[:ACTED_IN {role: 'Pablo Escobar'}]->(sl), (a33)-[:ACTED_IN {role: 'Valeria Vélez'}]->(s), (a33)-[:ACTED_IN {role: 'Valeria Vélez'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'The Mandalorian', episode_title: 'Chapter 1: The Mandalorian'}), (sl:Series {title: 'The Mandalorian', episode_title: 'Chapter 24: The Return'}), (g:Genre {name: 'Ficção Científica'}), (a24:Actor {name: 'Pedro Pascal'}), (a34:Actor {name: 'Gina Carano'}), (d:Director {name: 'Jon Favreau'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a24)-[:ACTED_IN {role: 'Din Djarin / The Mandalorian'}]->(s), (a24)-[:ACTED_IN {role: 'Din Djarin / The Mandalorian'}]->(sl), (a34)-[:ACTED_IN {role: 'Cara Dune'}]->(s), (a34)-[:ACTED_IN {role: 'Cara Dune'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);

MATCH (s:Series {title: 'Our Planet', episode_title: 'One Planet'}), (sl:Series {title: 'Our Planet', episode_title: 'From Pole to Pole'}), (g:Genre {name: 'Documentário'}), (a35:Actor {name: 'David Attenborough'}), (d:Director {name: 'Alastair Fothergill'})
CREATE (s)-[:IN_GENRE]->(g), (sl)-[:IN_GENRE]->(g), (a35)-[:ACTED_IN {role: 'Narrador'}]->(s), (a35)-[:ACTED_IN {role: 'Narrador'}]->(sl), (d)-[:DIRECTED]->(s), (d)-[:DIRECTED]->(sl);


// Relacionamentos User -> Movie
MATCH (u:User {id: '1001'}), (m:Movie {title: 'Avengers: Endgame'})
CREATE (u)-[w:WATCHED {date: '18/08/2025', rating: 5}]->(m);

MATCH (u:User {id: '1002'}), (m:Movie {title: 'Titanic'})
CREATE (u)-[w:WATCHED {date: '25/03/2025', rating: 4}]->(m);

MATCH (u:User {id: '1003'}), (m:Movie {title: 'The Shawshank Redemption'})
CREATE (u)-[w:WATCHED {date: '05/11/2025', rating: 3}]->(m);

MATCH (u:User {id: '1004'}), (m:Movie {title: ""Won't You Be My Neighbor?""})
CREATE (u)-[w:WATCHED {date: '20/04/2025', rating: 4}]->(m);

MATCH (u:User {id: '1005'}), (m:Movie {title: 'Spirited Away'})
CREATE (u)-[w:WATCHED {date: '30/09/2025', rating: 2}]->(m);

MATCH (u:User {id: '1006'}), (m:Movie {title: 'Avengers: Endgame'})
CREATE (u)-[w:WATCHED {date: '10/11/2025', rating: 4}]->(m);

MATCH (u:User {id: '1007'}), (m:Movie {title: 'The Godfather'})
CREATE (u)-[w:WATCHED {date: '15/06/2025', rating: 5}]->(m);

MATCH (u:User {id: '1008'}), (m:Movie {title: 'Jurassic Park'})
CREATE (u)-[w:WATCHED {date: '22/08/2025', rating: 3}]->(m);

MATCH (u:User {id: '1009'}), (m:Movie {title: 'Inception'})
CREATE (u)-[w:WATCHED {date: '25/03/2025', rating: 4}]->(m);

MATCH (u:User {id: '1010'}), (m:Movie {title: 'The Conjuring'})
CREATE (u)-[w:WATCHED {date: '10/07/2025', rating: 5}]->(m);


// Relacionamentos User -> Series
MATCH (u:User {id: '1001'}), (s:Series {title: 'Rick and Morty', season: 7, episode: 10})
CREATE (u)-[w:WATCHED {date: '01/09/2025', rating: 5}]->(s);

MATCH (u:User {id: '1002'}), (s:Series {title: 'The Last of Us', season: 1, episode: 1})
CREATE (u)-[w:WATCHED {date: '05/04/2025', rating: 4}]->(s);

MATCH (u:User {id: '1003'}), (s:Series {title: 'Our Planet', season: 1, episode: 8})
CREATE (u)-[w:WATCHED {date: '12/11/2025', rating: 2}]->(s);

MATCH (u:User {id: '1004'}), (s:Series {title: 'The Last of Us', season: 1, episode: 1})
CREATE (u)-[w:WATCHED {date: '18/05/2025', rating: 5}]->(s);

MATCH (u:User {id: '1005'}), (s:Series {title: 'Breaking Bad', season: 1, episode: 1})
CREATE (u)-[w:WATCHED {date: '20/10/2025', rating: 4}]->(s);

MATCH (u:User {id: '1006'}), (s:Series {title: 'Narcos', season: 3, episode: 10})
CREATE (u)-[w:WATCHED {date: '14/11/2025', rating: 5}]->(s);

MATCH (u:User {id: '1007'}), (s:Series {title: 'The Office', season: 9, episode: 25})
CREATE (u)-[w:WATCHED {date: '03/07/2025', rating: 1}]->(s);

MATCH (u:User {id: '1008'}), (s:Series {title: 'The Mandalorian', season: 3, episode: 8})
CREATE (u)-[w:WATCHED {date: '28/09/2025', rating: 3}]->(s);

MATCH (u:User {id: '1009'}), (s:Series {title: 'Bridgerton', season: 1, episode: 1})
CREATE (u)-[w:WATCHED {date: '30/04/2025', rating: 5}]->(s);

MATCH (u:User {id: '1010'}), (s:Series {title: 'Stranger Things', season: 1, episode: 1})
CREATE (u)-[w:WATCHED {date: '18/08/2025', rating: 4}]->(s);