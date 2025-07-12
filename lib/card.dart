import 'package:flutter/material.dart';
import 'package:grill_app/categorie.dart';
import 'package:grill_app/theme/colors.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  final List<Category> _categoryCard = [
    Category(
      'assets/images/burger.png',
      'Beef Fillet Burger',
      'Chessy  Mazarella',
      900,
    ),
    Category('assets/images/burger.png', 'Aloha Burger', 'Double Beef', 600),
    Category(
      'assets/images/burger.png',
      'Beef Fillet Burger',
      'Chessy  Mazarella',
      700,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350, // Reduced from 400 to 200
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categoryCard.length,
        itemBuilder: (context, index) {
          final categoryCard = _categoryCard[index];

          return GestureDetector(
            onTap: () {
              // print('card clicked');
              Navigator.pushNamed(context, '/card_detailed');
            },
            child: Container(
              width: 260,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage(categoryCard.imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // favourite icon
                        Positioned(
                          left: 20,
                          top: 20,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 35,
                            color: AppColors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(16), // Reduced from 22 to 16
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categoryCard.title,
                                style: TextStyle(
                                  fontSize: 18, // Reduced from 22 to 18
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 2), // Reduced from 4 to 2
                              Text(
                                categoryCard.subtitle,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600] ?? Colors.grey,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Text(
                            '₦${categoryCard.price}', // Added currency symbol
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
