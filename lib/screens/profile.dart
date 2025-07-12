import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grill_app/card.dart';
import 'package:grill_app/theme/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _searchField = TextEditingController();

  final List<Map<String, dynamic>> categories = const [
    {'imagePath': 'assets/images/burger.png', 'title': 'Burgers'},
    {'imagePath': 'assets/images/burger.png', 'title': 'Pizza'}, // Changed from SVG to PNG
    {'imagePath': 'assets/images/delivery_guy.png', 'title': 'Drinks'},
    {'imagePath': 'assets/images/burger.png', 'title': 'Salads'},
    {'imagePath': 'assets/images/burger.png', 'title': 'Desserts'},
    {'imagePath': 'assets/images/burger.png', 'title': 'Snacks'},
  ];

  // Helper function to determine if image is SVG
  bool _isSvgImage(String imagePath) {
    return imagePath.toLowerCase().endsWith('.svg');
  }

  // Helper function to build image widget
  Widget _buildImageWidget(String imagePath, {double? width, double? height, BoxFit? fit}) {
    if (_isSvgImage(imagePath)) {
      return SvgPicture.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
      );
    } else {
      return Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit ?? BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: Icon(Icons.menu, size: 24),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 32,
              width: 32,
              margin: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/burger.png'),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Afternoon',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'What your order today?',
                    style: TextStyle(color: AppColors.orange),
                  ),
                ],
              ),

              SizedBox(height: 22),
              // searchfield_container
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  controller: _searchField,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(22),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search, size: 32),
                  ),
                ),
              ),

              SizedBox(height: 22),

              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightYellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 70,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'The Fastest In Delivery Food',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 12),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.orange,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/delivery_guy.png',
                            width: 185,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22),

              Text(
                "Categories",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 12),

              SizedBox(
                height: 65,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    return GestureDetector(
                      onTap: () {
                        print('Tapped on ${category['title']}');
                      },
                      child: Container(
                        width: 160, // Fixed width for horizontal ListView
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          color: index == 0 ? AppColors.bgColor : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.1),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 55,
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: index == 0
                                    ? Colors.white
                                    : AppColors.bgColor,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: _buildImageWidget(
                                  category['imagePath'],
                                  width: 50,
                                  height: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 1),
                            Expanded(
                              child: Text(
                                category['title'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: index == 0
                                      ? Colors.white
                                      : Colors.black87,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 24),

              Text(
                "Popular Items",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 12),

              CategoryCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'fav'),
        ],
      ),
    );
  }
}
