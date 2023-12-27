class FoodList_model {
  final String imagename;
  final String image;
  final String subtitle;
  final String description;
  final String chefimage;
  final String chefname;
  final List<String> ingredients;

  FoodList_model({
    required this.ingredients,
    required this.chefimage,
    required this.chefname,
    required this.description,
    required this.imagename,
    required this.image,
    required this.subtitle,
  });
}

List<FoodList_model> foodlist = [
  FoodList_model(
      imagename: "Pizza",
      image: "assets/images/pizza.jpeg",
      subtitle: "50% Special Offer",
      description:
          "Pizza is an iconic dish originating from Italy, consisting of a round, flattened base of dough topped with various ingredients.",
      chefimage: "assets/images/chef1.jpeg",
      chefname: "Dianne Russell",
      ingredients: [
        "Flour",
        "Salt",
        "Olive Oil",
        "Garlic",
        "Oregano",
        "Pepper",
        "Mozzarella"
      ]),
  FoodList_model(
      imagename: "Burger",
      image: "assets/images/burger.jpeg",
      subtitle: "60% Special Offer",
      description:
          "A burger is a tasty meal made of a meat or veggie patty hugged by a soft bun.It's all about the layers - from the patty to lettuce, tomato, cheese, and sauces. ",
      chefimage: "assets/images/chef4.jpeg",
      chefname: "Dona Ronaldo",
      ingredients: [
        "Kataifi Dough",
        "Butter or Ghee",
        "Cheese",
        "Sugar",
        "Water",
        "Optional: Lemon juice, rose/orange blossom water",
        "Optional garnish: Nuts like pistachios or almonds"
      ]),
  FoodList_model(
      imagename: "Kunafa",
      image: "assets/images/kunafa.jpeg",
      subtitle: "20% Special Offer",
      description:
          "Kunafa is a Middle Eastern dessert that's crispy on the outside and creamy inside. It's made with thin, crunchy pastry strands wrapped around sweet cheese or cream",
      chefimage: "assets/images/chef2.jpeg",
      chefname: "Mariya Jhon",
      ingredients: [
        "Hamburger Patty (beef, turkey, chicken, veggie, etc.)",
        "Bun",
        "Lettuce",
        "Tomato",
        "Onion",
        "Cheese",
        "Pickles",
      ]),
  FoodList_model(
      imagename: "Chicken Noodles",
      image: "assets/images/soy-sauce-noodlesH2.jpg",
      subtitle: "30% Special Offer",
      description:
          "Chicken noodles are a yummy dish that combines tender chicken pieces with cooked noodles. It's a comforting meal where the chicken is usually cooked with veggies like carrots, bell peppers, and maybe some onions. ",
      chefimage: "assets/images/chef1.jpeg",
      chefname: "Rayan Philip",
      ingredients: [
        "Chicken (typically boneless, skinless chicken breast or thighs)",
        "Noodles (such as egg noodles, rice noodles, or any preferred type)",
        "Vegetables (commonly carrots, bell peppers, onions, and broccoli)",
        "Soy Sauce",
        "Garlic",
        "Ginger",
        "Cooking Oil"
        "Optional: Seasonings or herbs like black pepper, chili flakes, or cilantro"
      ])
];
