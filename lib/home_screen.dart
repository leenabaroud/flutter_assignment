import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? onSeeAllCategories;
  const HomeScreen({Key? key, this.onSeeAllCategories}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black26,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rafatul Islam",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Stack(
                      children: const [
                        Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.black54,
                        ),
                        Positioned(
                          left: 15,
                          child: Icon(
                            Icons.circle,
                            size: 15,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      item1("images/card.png"),
                      item1("images/card2.png"),
                      item1("images/card.png"),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: widget.onSeeAllCategories,
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      itemCategory("images/vegetables1.png"),
                      itemCategory("images/vegetables2.png"),
                      itemCategory("images/vegetables3.png"),
                      itemCategory("images/vegetables4.png"),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Trending Deals",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TrendingCategoryItem(
                            imagePath: "images/Avocado.png",
                            name: "Avocado",
                            price: "\$6.7",
                          ),
                        ),
                        Expanded(
                          child: TrendingCategoryItem(
                            imagePath: "images/Brocoli.png",
                            name: "Brocoli",
                            price: "\$8.7",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children:  [
                        Expanded(
                          child: TrendingCategoryItem(
                            imagePath: "images/Tomatoes.png",
                            name: "Tomatoes",
                            price: "\$4.9",
                          ),
                        ),
                        Expanded(
                          child: TrendingCategoryItem(
                            imagePath: "images/Grapes.png",
                            name: "Grapes",
                            price: "\$7.2",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                 SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 320,
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:  Center(
                      child: Text(
                        "More",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget item1(String imagePath) {
  return Padding(
    padding:  EdgeInsets.only(right: 15),
    child: Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    ),
  );
}

Widget itemCategory(String imagePath) {
  return Padding(
    padding:  EdgeInsets.only(right: 20),
    child: Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow:  [
          BoxShadow(
            color: Color(0xfff3f3f3),
            spreadRadius: 5,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Image.asset(imagePath, width: 30, height: 30),
    ),
  );
}

class TrendingCategoryItem extends StatefulWidget {
  final String imagePath;
  final String name;
  final String price;

  const TrendingCategoryItem({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<TrendingCategoryItem> createState() => _TrendingCategoryItemState();
}

class _TrendingCategoryItemState extends State<TrendingCategoryItem> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                child: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: _isFavorite ? Colors.red : Colors.white,
                  size: 24,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 10,
              child: Text(
                widget.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                widget.price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
