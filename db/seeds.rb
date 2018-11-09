user1 = User.new
user1.email = "ssaunier@lewagon.com"
user1.password = "ssaunier"
user1.save

puts 'Creating 4 vinyls for Seb (user_id #1)...'
  vinyl1 = Vinyl.new(
    user_id: 1,
    album: "The Dark Side of the Moon",
    artist: "Pink Floyd",
    year: "1973",
    genre: "Progressive Rock",
    description: "The Dark Side of the Moon is the eighth studio album by English rock band Pink Floyd, released on 1 March 1973 by Harvest Records. It built on ideas explored in Pink Floyd's earlier recordings and performances, but without the extended instrumentals that characterised their earlier work. Its themes explore conflict, greed, time, and mental illness.",
    picture: "https://images-na.ssl-images-amazon.com/images/I/31ESVCFE0SL.jpg"
  )
  vinyl1.save!

  vinyl2 = Vinyl.new(
    user_id: 1,
    album: "Sgt. Pepper's Lonely Hearts Club Band",
    artist: "The Beatles",
    year: "1967",
    genre: "Rock",
    description: "Sgt. Pepper is regarded by musicologists as an early concept album that advanced the use of extended form in popular music while continuing the artistic maturation seen on the Beatles' preceding releases. It is described as one of the first art rock LPs, aiding the development of progressive rock, and is credited with marking the beginning of the album era.",
    picture: "https://addict-culture.com/wp-content/uploads/2018/05/sgt-Pepper.jpg"
  )
  vinyl2.save!

  vinyl3 = Vinyl.new(
    user_id: 1,
    album: "Jagged Little Pill",
    artist: "Alanis Morissette",
    year: "1995",
    genre: "Alternative Rock",
    description: "Jagged Little Pill is the third studio album, and international debut, by Canadian singer Alanis Morissette, released on June 13, 1995 through Maverick. It was her first album to be released worldwide as her first two albums were released only in her native Canada. Morissette began work on the album after moving from her hometown, Ottawa, to Toronto.",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/4/47/Alanis_Morissette_-_Jagged_Little_Pill.jpg/220px-Alanis_Morissette_-_Jagged_Little_Pill.jpg"
  )
  vinyl3.save!

  vinyl4 = Vinyl.new(
    user_id: 1,
    album: "Nevermind",
    artist: "Nirvana",
    year: "1991",
    genre: "Grunge",
    description: "Nevermind was responsible in part for bringing both alternative rock and grunge music to a mainstream audience, and has been ranked highly on lists of the greatest albums of all time by publications such as Rolling Stone and Time. The Recording Industry Association of America later certified the album Diamond (at least 10 million copies shipped).",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/NirvanaNevermindalbumcover.jpg/220px-NirvanaNevermindalbumcover.jpg"
  )
  vinyl4.save!

user2 = User.new
user2.email = "papillard@lewagon.com"
user2.password = "papillard"
user2.save

puts 'Creating 4 vinyls for Boris (user_id #2)...'
  vinyl5 = Vinyl.new(
    user_id: 2,
    album: "Appetite for Destruction",
    artist: "Guns N'Roses",
    year: "1987",
    genre: "Hard Rock",
    description: "Appetite for Destruction became a massive commercial success, after the band had toured and received airplay with the singles 'Welcome to the Jungle', 'Paradise City' and 'Sweet Child o' Mine'. It topped the Billboard 200 and became the best-selling debut album of all time, as well as the eleventh best-selling album of all time in the United States.",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/6/60/GunsnRosesAppetiteforDestructionalbumcover.jpg/220px-GunsnRosesAppetiteforDestructionalbumcover.jpg"
  )
  vinyl5.save!

  vinyl6 = Vinyl.new(
    user_id: 2,
    album: "Physical Graffiti",
    artist: "Led Zeppelin",
    year: "1975",
    genre: "Rock",
    description: "Physical Graffiti was commercially and critically successful upon its release and debuted at number one on album charts in both the US and the UK. It was promoted by a successful US tour and a five-night residency at Earl's Court, London, and has since been viewed as one of the group's strongest albums and the artistic peak of their career.",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e3/Led_Zeppelin_-_Physical_Graffiti.jpg/220px-Led_Zeppelin_-_Physical_Graffiti.jpg"
  )
  vinyl6.save!

  vinyl7 = Vinyl.new(
    user_id: 2,
    album: "Thriller",
    artist: "Michael Jackson",
    year: "1982",
    genre: "Pop",
    description: "Thriller is the sixth studio album by American singer Michael Jackson, released on November 30, 1982, in the United States by Epic Records and internationally by CBS Records.[1][2] It explores genres similar to Jackson's previous album, Off the Wall, including pop, post-disco, rock and funk.",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/5/55/Michael_Jackson_-_Thriller.png/220px-Michael_Jackson_-_Thriller.png"
  )
  vinyl7.save!

  vinyl8 = Vinyl.new(
    user_id: 2,
    album: "Aladdin Sane",
    artist: "David Bowie",
    year: "1973",
    genre: "Glam Rock",
    description: "Aladdin Sane persona is an extension of Ziggy Stardust; the lightning bolt a representation of the “cracked actor” that Bowie felt he had become during his sudden rise to superstardom. Yet while Bowie exuded otherworldly powers at this point in his career, the cover photo was taken in the very earthly confines of Brian Duffy’s studio in Primrose Hill, London.",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/6/6e/DavisBowieAladdinSane.jpg/220px-DavisBowieAladdinSane.jpg"
  )
  vinyl8.save!

puts 'Finished!'
