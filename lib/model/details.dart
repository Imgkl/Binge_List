class Detail {
  String title;
  String description;
  double rating;
  String stream;
  String status;
  int seasons;
  String genre;

  Detail(
      {this.title,
      this.description,
      this.rating,
      this.stream,
      this.status,
      this.seasons,
      this.genre});
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
      genre: "Drama, History"),
  Detail(
      title: "Breaking Bad",
      description:
          "Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.",
      rating: 9.5,
      stream: "Netflix",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller"),
  Detail(
      title: "Game of Thrones",
      description:
          "Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.",
      rating: 9.4,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Drama, Adventure"),
  Detail(
      title: "The Wire",
      description:
          "In the city of Baltimore, Detective James McNulty and his team investigate crimes and try their best to solve the bridge that exists between the drug kingpins and the law enforcement agencies.",
      rating: 9.3,
      stream: "Hotstar",
      status: "Completed",
      seasons: 5,
      genre: "Crime, Drama, Thriller"),
  Detail(
      title: "Rick and Morty",
      description:
          "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.",
      rating: 9.2,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 4,
      genre: "Animation, Comedy Adventure"),
  Detail(
    title: "F.R.I.E.N.D.S",
    description:
        "Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.",
    rating: 8.9,
    stream: "Netflix",
    status: "Completed",
    seasons: 10,
    genre: "Comedy, Sitcom",
  ),
  Detail(
      title: "Dexter",
      description:
          "By day, mild-mannered Dexter is a blood-spatter analyst for the Miami police. But at night, he is a serial killer who only targets other murderers.",
      rating: 8.9,
      stream: "Hotstar",
      status: "Completed",
      seasons: 8,
      genre: "Mystery, Crime"),
  Detail(
      title: "Black Mirror",
      description:
          "An anthology series exploring a twisted, high-tech world where humanity's greatest innovations and darkest instincts collide.",
      rating: 8.9,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 5,
      genre: "Sci-Fi, Thriller, Drama"),
  Detail(
      title: "Stranger Things",
      description:
          "When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.",
      rating: 8.9,
      stream: "Netflix",
      status: "Ongoing",
      seasons: 3,
      genre: "Fantasy, Horror"),
];
