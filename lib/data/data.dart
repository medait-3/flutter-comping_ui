class Cardlist {
  final int  id ;
  final String img;
  final String name;
  final String descripton;
  final String rating;

  Cardlist({
    required this.id,
    required this.img,
    required this.name,
    required this.descripton,
    required this.rating,
  });
    factory Cardlist.fromJson(Map<String, dynamic> json) {
    return Cardlist(
      id: json['id'],
      img: json['img'],
      name: json['name'],
      descripton: json['description'],
      rating: json['rating'],
    );
  }

}

final List<Cardlist> mycardList = [
  
  Cardlist(
    id:1,
    name: "Explore Nature",
    descripton: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system",
    img: "assets/watches/c.png",
    rating: "4.9"
  ),
  Cardlist(
    id:2,
    name: "Night Camp",
    descripton: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system",
    img: "assets/watches/c.png",
    rating: "4.7"
  ),
  Cardlist(
    id:3,
    name: "Night Camp",
    descripton: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system",
    img: "assets/watches/c.png",
    rating: "4.8"
  ),
  
];