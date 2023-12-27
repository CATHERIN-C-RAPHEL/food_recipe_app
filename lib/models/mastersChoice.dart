class Mastersfav {
  final String image;
  final String imagename;
  final String subtitle;
  final String descrip;
  final String name;
  final String chefimg;
  final List<String> recipe;

  Mastersfav(
      {required this.descrip,
      required this.name,
      required this.chefimg,
      required this.recipe,
      required this.image,
      required this.imagename,
      required this.subtitle});
}

List<Mastersfav> mastersfavourite = [
  Mastersfav(
      image: "assets/images/kabsa.jpeg",
      imagename: "Kabsa",
      subtitle: "Cooks within 45 min",
      descrip:
          "Kabsa is a cherished traditional dish that originates from Saudi Arabia but is popular across the Middle East. It's a flavorful and aromatic rice dish typically made with meat (often chicken, lamb, beef, or goat), fragrant spices, and long-grain rice, creating a delightful combination of tastes and textures.",
      name: 'Louis George',
      chefimg: "assets/images/chef.jpeg",
      recipe: ["Chicken",
      "Tomatoes",
      "Onions",
      "Garlic",
      "Carrots",
      "Cinnamon",
      "Cardamom",
      "Cloves",
      "Raisins and nuts for garnish (optional)",
      "Various spices like turmeric, black pepper, and cumin"]),
  Mastersfav(
      image: "assets/images/alfaham.jpeg",
      imagename: "Al Faham",
      subtitle: "Cooks within 35 min",
      descrip:
          "Al Faham, also known as 'Arabic Grilled Chicken' or 'Shawarma Chicken,' is a popular Middle Eastern dish known for its aromatic flavors and juicy, grilled texture. It's a staple in countries like Saudi Arabia, UAE, and other regions across the Middle East.",
      name: 'Victoria Mariya',
      chefimg: "assets/images/chef5.jpeg",
      recipe: ["Chicken",
          "Yogurt",
          "Lemon Juice",
          "Garlic",
          "Ginger",
          "Green Chilies",
          "Spices (commonly paprika, cumin, coriander)",
          "Salt",
          "Pepper",
          "Vegetable Oil"]),
];
