import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 28),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: categoryItem(
                      "images/fruits2.png",
                      "Fruits",
                      "87 items",
                      isSelected: selectedIndex == 0,
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: categoryItem(
                      "images/Vector (2).png",
                      "Vegetables",
                      "87 items",
                      isSelected: selectedIndex == 1,
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: categoryItem(
                      "images/Group.png",
                      "Mushroom",
                      "87 items",
                      isSelected: selectedIndex == 2,
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: categoryItem(
                      "images/dairy.png",
                      "Dairy",
                      "87 items",
                      isSelected: selectedIndex == 3,
                      onTap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: categoryItem(
                      "images/oats.png",
                      "Oats",
                      "87 items",
                      isSelected: selectedIndex == 4,
                      onTap: () {
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: categoryItem(
                      "images/Bread.png",
                      "Bread",
                      "87 items",
                      isSelected: selectedIndex == 5,
                      onTap: () {
                        setState(() {
                          selectedIndex = 5;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: categoryItem(
                      "images/Rice.png",
                      "Rice",
                      "27 items",
                      isSelected: selectedIndex == 6,
                      onTap: () {
                        setState(() {
                          selectedIndex = 6;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: categoryItem(
                      "images/Egg.png",
                      "Egg",
                      "120 items",
                      isSelected: selectedIndex == 7,
                      onTap: () {
                        setState(() {
                          selectedIndex = 7;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget categoryItem(
    String imagePath,
    String name,
    String numOfItems, {
      bool isSelected = false,
      VoidCallback? onTap,
    }) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: isSelected ? Color(0xFFFFC542) : Colors.white,
        ),
        child:
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    imagePath,
                    width: 65,
                    height: 65,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.image_not_supported, size: 50, color: Colors.grey);
                    },
                  ),
                  SizedBox(height: 8),
                  Text(
                    name,
                    style: TextStyle(
                      color: isSelected ? Colors.black : Color(0xFFE57E25),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    numOfItems,
                    style: TextStyle(
                      color: isSelected ? Colors.black87 : Color(0xFFE57E25),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
  );
}