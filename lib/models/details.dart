class Detail {
  String title;
  String description;
  double rating;
  String stream;
  String status;
  int seasons;
  String genre;
  String url;
  String vid;

  Detail(
      {this.title,
      this.description,
      this.rating,
      this.stream,
      this.status,
      this.seasons,
      this.genre,
      this.url,
      this.vid});
}

final detailsList = [
  Detail(
      title: "Chernobyl",
      description:
          "Chernobyl is a historical drama television miniseries created and produced by HBO in association with Sky UK, depicting the Chernobyl nuclear disaster of April 1986 and the unprecedented cleanup efforts that followed.",
      rating: 9.6,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, History",
      url: "https://www.hotstar.com/tv/chernobyl/s-2146",
      vid: "s9APLXM9Ei8"),
  Detail(
      title: "Breaking Bad",
      description:
          "Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.",
      rating: 9.5,
      stream: "Netflix",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.netflix.com/title/70143836",
      vid: "HhesaQXLuRY"),
  Detail(
      title: "Band of Brothers",
      description:
          "The story of Easy Company, 506th Regiment of the 101st Airborne Division from 1942 to the end of World War II. A collection of fifty portraits illustrated by archive footage and recounted in voice.",
      rating: 9.5,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, Action, History",
      url: "https://www.hotstar.com/tv/band-of-brothers/s-507",
      vid: "kyDkHvi9yeI"),
  Detail(
      title: "Game of Thrones",
      description:
          "Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.",
      rating: 9.4,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Drama, Adventure",
      url: "https://www.hotstar.com/tv/game-of-thrones/s-510",
      vid: "BpJYNVhGf1s"),
  Detail(
      title: "The Wire",
      description:
          "In the city of Baltimore, Detective James McNulty and his team investigate crimes and try their best to solve the bridge that exists between the drug kingpins and the law enforcement agencies.",
      rating: 9.3,
      stream: "Hotstar",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.hotstar.com/tv/the-wire/s-527",
      vid: "9qK-VGjMr8g"),
  Detail(
      title: "Rick and Morty",
      description:
          "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.",
      rating: 9.2,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Animation,Comedy,Adventure",
      url: "https://www.netflix.com/title/80014749",
      vid: "WNhH00OIPP0"),
  Detail(
      title: "Avatar:The Last Airbender",
      description:
          "The world is divided into four nations -- the Water Tribe, the Earth Kingdom, the Fire Nation and and the Air Nomads -- each represented by a natural element for which the nation is named. Benders have the ability to control and manipulate the element from their nation. Only the Avatar is the master of all four elements. The ruthless Fire Nation wants to conquer the world but the only bender who has enough power, the Avatar, has disappeared ... until now. His tribe soon discovers that Aang is the long-lost Avatar. Now Katara and Sokka must safeguard Aang on his journey to master all four elements and save the world from the Fire Nation.",
      rating: 9.2,
      stream: "Torrent",
      status: "Completed",
      seasons: 3,
      genre: " Animation, Action, Adventure",
      url: "",
      vid: "B14pPZ1AlbI"),
  Detail(
      title: "The Sopranos",
      description:
          "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.",
      rating: 9.2,
      stream: "Hotstar",
      status: "Completed",
      seasons: 6,
      genre: "Crime, Drama",
      url: "https://www.hotstar.com/tv/the-sopranos/s-934",
      vid: "wrN2k3qGbVA"),
  Detail(
      title: "Sherlock",
      description:
          "Dr. Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric individual with a knack for solving crimes. Together, they take on the most unusual cases.",
      rating: 9.1,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: " Crime, Drama, Mystery",
      url: "https://www.netflix.com/title/70202589",
      vid: "xK7S9mrFWL4"),
  Detail(
      title: "Death Note",
      description:
          "An intelligent high school student goes on a secret crusade to eliminate criminals from the world after discovering a notebook capable of killing anyone whose name is written into it.",
      rating: 9.0,
      stream: "Netflix",
      status: "Completed",
      seasons: 1,
      genre: " Animation,Suspense,Chilling",
      url: "https://www.netflix.com/title/70204970",
      vid: "HK3lkfhX_XY"),
  Detail(
      title: "Firefly",
      description:
          "Five hundred years in the future, a renegade crew aboard a small spacecraft tries to survive as they travel the unknown parts of the galaxy and evade warring factions as well as authority agents out to get them.",
      rating: 9.0,
      stream: "Torrents",
      status: "Completed",
      seasons: 1,
      genre: " Adventure, Drama, Sci-Fi",
      url: "",
      vid: "mEx6UpiIKM4"),
  Detail(
      title: "True Detective",
      description:
          "Police officers and detectives around the USA are forced to face dark secrets about themselves and the people around them while investigating homicides.",
      rating: 9.0,
      stream: "Hotstar",
      status: "Ongoing",
      seasons: 3,
      genre: "Crime, Mystery, Anthology",
      url: "https://www.hotstar.com/tv/true-detective/s-528",
      vid: "fVQUcaO4AvE"),
  Detail(
      title: "Fargo",
      description:
          "Various chronicles of deception, intrigue and murder in and around frozen Minnesota. Yet all of these tales mysteriously lead back one way or another to Fargo, North Dakota.",
      rating: 9,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Drama, Action, History",
      url: "https://www.netflix.com/watch/70285785",
      vid: "etgvHG3w48"),
  Detail(
      title: "Black Mirror",
      description:
          "An anthology series exploring a twisted, high-tech world where humanity's greatest innovations and darkest instincts collide.",
      rating: 8.9,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 5,
      genre: "Drama, Sci-Fi, Thriller ",
      url: "https://www.netflix.com/title/70264888",
      vid: "nSDviEdvw4U"),
  Detail(
      title: "Stranger Things",
      description:
          "When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.",
      rating: 8.9,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 3,
      genre: "Drama, Fantasy, Horror",
      url: "https://www.netflix.com/title/80057281",
      vid: "mnd7sFt5c3A"),
  Detail(
      title: "F.R.I.E.D.S",
      description:
          "Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.",
      rating: 8.9,
      stream: "Netflix",
      status: "Completed",
      seasons: 10,
      genre: "Comedy, Sitcom",
      url: "https://www.netflix.com/title/70153404",
      vid: "Eibl9JIpcKk"),
  Detail(
      title: "Westworld",
      description:
          "In a futuristic Western-themed amusement park, Westworld, the visitors interact with automatons. However, all hell breaks loose when the robots begin malfunctioning.",
      rating: 8.8,
      stream: "Hotstar",
      status: "Ongoing",
      seasons: 3,
      genre: "Drama, Mystery, Sci-Fi",
      url: "https://www.hotstar.com/tv/westworld/s-825",
      vid: "kEkZdgWu7mM"),
  Detail(
      title: "The Office US",
      description:
          "A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.",
      rating: 8.8,
      stream: "Amazon Prime",
      status: "Completed",
      seasons: 9,
      genre: "Crime, Drama",
      url:
          "https://www.primevideo.com/detail/The-Office/0H7JFOPK2QO9WVZ8D9D0J5ZRQN",
      vid: "jz1omRneAGg"),
  Detail(
      title: "Sherlock",
      description:
          "Dr. Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric individual with a knack for solving crimes. Together, they take on the most unusual cases.",
      rating: 9.1,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: " Crime, Drama, Mystery",
      url: "https://www.netflix.com/title/70202589",
      vid: "xK7S9mrFWL4"),
  Detail(
      title: "Death Note",
      description:
          "An intelligent high school student goes on a secret crusade to eliminate criminals from the world after discovering a notebook capable of killing anyone whose name is written into it.",
      rating: 9.0,
      stream: "Netflix",
      status: "Completed",
      seasons: 1,
      genre: " Animation,Suspense,Chilling",
      url: "https://www.netflix.com/title/70204970",
      vid: "HK3lkfhX_XY"),
  Detail(
      title: "Chernobyl",
      description:
          "Chernobyl is a historical drama television miniseries created and produced by HBO in association with Sky UK, depicting the Chernobyl nuclear disaster of April 1986 and the unprecedented cleanup efforts that followed.",
      rating: 9.6,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, History",
      url: "https://www.hotstar.com/tv/chernobyl/s-2146",
      vid: "s9APLXM9Ei8"),
  Detail(
      title: "Breaking Bad",
      description:
          "Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.",
      rating: 9.5,
      stream: "Netflix",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.netflix.com/title/70143836",
      vid: "HhesaQXLuRY"),
  Detail(
      title: "Band of Brothers",
      description:
          "The story of Easy Company, 506th Regiment of the 101st Airborne Division from 1942 to the end of World War II. A collection of fifty portraits illustrated by archive footage and recounted in voice.",
      rating: 9.5,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, Action, History",
      url: "https://www.hotstar.com/tv/band-of-brothers/s-507",
      vid: "kyDkHvi9yeI"),
  Detail(
      title: "Game of Thrones",
      description:
          "Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.",
      rating: 9.4,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Drama, Adventure",
      url: "https://www.hotstar.com/tv/game-of-thrones/s-510",
      vid: "BpJYNVhGf1s"),
  Detail(
      title: "The Wire",
      description:
          "In the city of Baltimore, Detective James McNulty and his team investigate crimes and try their best to solve the bridge that exists between the drug kingpins and the law enforcement agencies.",
      rating: 9.3,
      stream: "Hotstar",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.hotstar.com/tv/the-wire/s-527",
      vid: "9qK-VGjMr8g"),
  Detail(
      title: "Rick and Morty",
      description:
          "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.",
      rating: 9.2,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Animation, Comedy Adventure",
      url: "https://www.netflix.com/title/80014749",
      vid: "WNhH00OIPP0"),
  Detail(
      title: "Avatar:The Last Airbender",
      description:
          "The world is divided into four nations -- the Water Tribe, the Earth Kingdom, the Fire Nation and and the Air Nomads -- each represented by a natural element for which the nation is named. Benders have the ability to control and manipulate the element from their nation. Only the Avatar is the master of all four elements. The ruthless Fire Nation wants to conquer the world but the only bender who has enough power, the Avatar, has disappeared ... until now. His tribe soon discovers that Aang is the long-lost Avatar. Now Katara and Sokka must safeguard Aang on his journey to master all four elements and save the world from the Fire Nation.",
      rating: 9.2,
      stream: "Torrent",
      status: "Completed",
      seasons: 3,
      genre: " Animation, Action, Adventure",
      url: "",
      vid: "B14pPZ1AlbI"),
  Detail(
      title: "The Sopranos",
      description:
          "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.",
      rating: 9.2,
      stream: "Hotstar",
      status: "Completed",
      seasons: 6,
      genre: "Crime, Drama",
      url: "https://www.hotstar.com/tv/the-sopranos/s-934",
      vid: "wrN2k3qGbVA"),
  Detail(
      title: "Sherlock",
      description:
          "Dr. Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric individual with a knack for solving crimes. Together, they take on the most unusual cases.",
      rating: 9.1,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: " Crime, Drama, Mystery",
      url: "https://www.netflix.com/title/70202589",
      vid: "xK7S9mrFWL4"),
  Detail(
      title: "Death Note",
      description:
          "An intelligent high school student goes on a secret crusade to eliminate criminals from the world after discovering a notebook capable of killing anyone whose name is written into it.",
      rating: 9.0,
      stream: "Netflix",
      status: "Completed",
      seasons: 1,
      genre: " Animation,Suspense,Chilling",
      url: "https://www.netflix.com/title/70204970",
      vid: "HK3lkfhX_XY"),
  Detail(
      title: "Chernobyl",
      description:
          "Chernobyl is a historical drama television miniseries created and produced by HBO in association with Sky UK, depicting the Chernobyl nuclear disaster of April 1986 and the unprecedented cleanup efforts that followed.",
      rating: 9.6,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, History",
      url: "https://www.hotstar.com/tv/chernobyl/s-2146",
      vid: "s9APLXM9Ei8"),
  Detail(
      title: "Breaking Bad",
      description:
          "Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.",
      rating: 9.5,
      stream: "Netflix",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.netflix.com/title/70143836",
      vid: "HhesaQXLuRY"),
  Detail(
      title: "Band of Brothers",
      description:
          "The story of Easy Company, 506th Regiment of the 101st Airborne Division from 1942 to the end of World War II. A collection of fifty portraits illustrated by archive footage and recounted in voice.",
      rating: 9.5,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, Action, History",
      url: "https://www.hotstar.com/tv/band-of-brothers/s-507",
      vid: "kyDkHvi9yeI"),
  Detail(
      title: "Game of Thrones",
      description:
          "Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.",
      rating: 9.4,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Drama, Adventure",
      url: "https://www.hotstar.com/tv/game-of-thrones/s-510",
      vid: "BpJYNVhGf1s"),
  Detail(
      title: "The Wire",
      description:
          "In the city of Baltimore, Detective James McNulty and his team investigate crimes and try their best to solve the bridge that exists between the drug kingpins and the law enforcement agencies.",
      rating: 9.3,
      stream: "Hotstar",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.hotstar.com/tv/the-wire/s-527",
      vid: "9qK-VGjMr8g"),
  Detail(
      title: "Rick and Morty",
      description:
          "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.",
      rating: 9.2,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Animation, Comedy Adventure",
      url: "https://www.netflix.com/title/80014749",
      vid: "WNhH00OIPP0"),
  Detail(
      title: "Avatar:The Last Airbender",
      description:
          "The world is divided into four nations -- the Water Tribe, the Earth Kingdom, the Fire Nation and and the Air Nomads -- each represented by a natural element for which the nation is named. Benders have the ability to control and manipulate the element from their nation. Only the Avatar is the master of all four elements. The ruthless Fire Nation wants to conquer the world but the only bender who has enough power, the Avatar, has disappeared ... until now. His tribe soon discovers that Aang is the long-lost Avatar. Now Katara and Sokka must safeguard Aang on his journey to master all four elements and save the world from the Fire Nation.",
      rating: 9.2,
      stream: "Torrent",
      status: "Completed",
      seasons: 3,
      genre: " Animation, Action, Adventure",
      url: "",
      vid: "B14pPZ1AlbI"),
  Detail(
      title: "The Sopranos",
      description:
          "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.",
      rating: 9.2,
      stream: "Hotstar",
      status: "Completed",
      seasons: 6,
      genre: "Crime, Drama",
      url: "https://www.hotstar.com/tv/the-sopranos/s-934",
      vid: "wrN2k3qGbVA"),
  Detail(
      title: "Sherlock",
      description:
          "Dr. Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric individual with a knack for solving crimes. Together, they take on the most unusual cases.",
      rating: 9.1,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: " Crime, Drama, Mystery",
      url: "https://www.netflix.com/title/70202589",
      vid: "xK7S9mrFWL4"),
  Detail(
      title: "Death Note",
      description:
          "An intelligent high school student goes on a secret crusade to eliminate criminals from the world after discovering a notebook capable of killing anyone whose name is written into it.",
      rating: 9.0,
      stream: "Netflix",
      status: "Completed",
      seasons: 1,
      genre: " Animation,Suspense,Chilling",
      url: "https://www.netflix.com/title/70204970",
      vid: "HK3lkfhX_XY"),
  Detail(
      title: "Chernobyl",
      description:
          "Chernobyl is a historical drama television miniseries created and produced by HBO in association with Sky UK, depicting the Chernobyl nuclear disaster of April 1986 and the unprecedented cleanup efforts that followed.",
      rating: 9.6,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, History",
      url: "https://www.hotstar.com/tv/chernobyl/s-2146",
      vid: "s9APLXM9Ei8"),
  Detail(
      title: "Breaking Bad",
      description:
          "Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.",
      rating: 9.5,
      stream: "Netflix",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.netflix.com/title/70143836",
      vid: "HhesaQXLuRY"),
  Detail(
      title: "Band of Brothers",
      description:
          "The story of Easy Company, 506th Regiment of the 101st Airborne Division from 1942 to the end of World War II. A collection of fifty portraits illustrated by archive footage and recounted in voice.",
      rating: 9.5,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, Action, History",
      url: "https://www.hotstar.com/tv/band-of-brothers/s-507",
      vid: "kyDkHvi9yeI"),
  Detail(
      title: "Game of Thrones",
      description:
          "Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.",
      rating: 9.4,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Drama, Adventure",
      url: "https://www.hotstar.com/tv/game-of-thrones/s-510",
      vid: "BpJYNVhGf1s"),
  Detail(
      title: "The Wire",
      description:
          "In the city of Baltimore, Detective James McNulty and his team investigate crimes and try their best to solve the bridge that exists between the drug kingpins and the law enforcement agencies.",
      rating: 9.3,
      stream: "Hotstar",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.hotstar.com/tv/the-wire/s-527",
      vid: "9qK-VGjMr8g"),
  Detail(
      title: "Rick and Morty",
      description:
          "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.",
      rating: 9.2,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Animation, Comedy Adventure",
      url: "https://www.netflix.com/title/80014749",
      vid: "WNhH00OIPP0"),
  Detail(
      title: "Avatar:The Last Airbender",
      description:
          "The world is divided into four nations -- the Water Tribe, the Earth Kingdom, the Fire Nation and and the Air Nomads -- each represented by a natural element for which the nation is named. Benders have the ability to control and manipulate the element from their nation. Only the Avatar is the master of all four elements. The ruthless Fire Nation wants to conquer the world but the only bender who has enough power, the Avatar, has disappeared ... until now. His tribe soon discovers that Aang is the long-lost Avatar. Now Katara and Sokka must safeguard Aang on his journey to master all four elements and save the world from the Fire Nation.",
      rating: 9.2,
      stream: "Torrent",
      status: "Completed",
      seasons: 3,
      genre: " Animation, Action, Adventure",
      url: "",
      vid: "B14pPZ1AlbI"),
  Detail(
      title: "The Sopranos",
      description:
          "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.",
      rating: 9.2,
      stream: "Hotstar",
      status: "Completed",
      seasons: 6,
      genre: "Crime, Drama",
      url: "https://www.hotstar.com/tv/the-sopranos/s-934",
      vid: "wrN2k3qGbVA"),
  Detail(
      title: "Sherlock",
      description:
          "Dr. Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric individual with a knack for solving crimes. Together, they take on the most unusual cases.",
      rating: 9.1,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: " Crime, Drama, Mystery",
      url: "https://www.netflix.com/title/70202589",
      vid: "xK7S9mrFWL4"),
  Detail(
      title: "Death Note",
      description:
          "An intelligent high school student goes on a secret crusade to eliminate criminals from the world after discovering a notebook capable of killing anyone whose name is written into it.",
      rating: 9.0,
      stream: "Netflix",
      status: "Completed",
      seasons: 1,
      genre: " Animation,Suspense,Chilling",
      url: "https://www.netflix.com/title/70204970",
      vid: "HK3lkfhX_XY"),
  Detail(
      title: "Chernobyl",
      description:
          "Chernobyl is a historical drama television miniseries created and produced by HBO in association with Sky UK, depicting the Chernobyl nuclear disaster of April 1986 and the unprecedented cleanup efforts that followed.",
      rating: 9.6,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, History",
      url: "https://www.hotstar.com/tv/chernobyl/s-2146",
      vid: "s9APLXM9Ei8"),
  Detail(
      title: "Breaking Bad",
      description:
          "Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.",
      rating: 9.5,
      stream: "Netflix",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.netflix.com/title/70143836",
      vid: "HhesaQXLuRY"),
  Detail(
      title: "Band of Brothers",
      description:
          "The story of Easy Company, 506th Regiment of the 101st Airborne Division from 1942 to the end of World War II. A collection of fifty portraits illustrated by archive footage and recounted in voice.",
      rating: 9.5,
      stream: "Hotstar",
      status: "Completed",
      seasons: 1,
      genre: "Drama, Action, History",
      url: "https://www.hotstar.com/tv/band-of-brothers/s-507",
      vid: "kyDkHvi9yeI"),
  Detail(
      title: "Game of Thrones",
      description:
          "Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.",
      rating: 9.4,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Drama, Adventure",
      url: "https://www.hotstar.com/tv/game-of-thrones/s-510",
      vid: "BpJYNVhGf1s"),
  Detail(
      title: "The Wire",
      description:
          "In the city of Baltimore, Detective James McNulty and his team investigate crimes and try their best to solve the bridge that exists between the drug kingpins and the law enforcement agencies.",
      rating: 9.3,
      stream: "Hotstar",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller",
      url: "https://www.hotstar.com/tv/the-wire/s-527",
      vid: "9qK-VGjMr8g"),
  Detail(
      title: "Rick and Morty",
      description:
          "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.",
      rating: 9.2,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Animation, Comedy Adventure",
      url: "https://www.netflix.com/title/80014749",
      vid: "WNhH00OIPP0"),
  Detail(
      title: "Avatar:The Last Airbender",
      description:
          "The world is divided into four nations -- the Water Tribe, the Earth Kingdom, the Fire Nation and and the Air Nomads -- each represented by a natural element for which the nation is named. Benders have the ability to control and manipulate the element from their nation. Only the Avatar is the master of all four elements. The ruthless Fire Nation wants to conquer the world but the only bender who has enough power, the Avatar, has disappeared ... until now. His tribe soon discovers that Aang is the long-lost Avatar. Now Katara and Sokka must safeguard Aang on his journey to master all four elements and save the world from the Fire Nation.",
      rating: 9.2,
      stream: "Torrent",
      status: "Completed",
      seasons: 3,
      genre: " Animation, Action, Adventure",
      url: "",
      vid: "B14pPZ1AlbI"),
  Detail(
      title: "The Sopranos",
      description:
          "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.",
      rating: 9.2,
      stream: "Hotstar",
      status: "Completed",
      seasons: 6,
      genre: "Crime, Drama",
      url: "https://www.hotstar.com/tv/the-sopranos/s-934",
      vid: "wrN2k3qGbVA"),
  Detail(
      title: "Sherlock",
      description:
          "Dr. Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric individual with a knack for solving crimes. Together, they take on the most unusual cases.",
      rating: 9.1,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: " Crime, Drama, Mystery",
      url: "https://www.netflix.com/title/70202589",
      vid: "xK7S9mrFWL4"),
  Detail(
      title: "Death Note",
      description:
          "An intelligent high school student goes on a secret crusade to eliminate criminals from the world after discovering a notebook capable of killing anyone whose name is written into it.",
      rating: 9.0,
      stream: "Netflix",
      status: "Completed",
      seasons: 1,
      genre: " Animation,Suspense,Chilling",
      url: "https://www.netflix.com/title/70204970",
      vid: "HK3lkfhX_XY"),
];
